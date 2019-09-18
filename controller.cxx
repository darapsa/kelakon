#include <QQmlApplicationEngine>
#include <QtQml>
#include <qrtclient/client.hxx>
#include <qrtclient/user.hxx>
#include "controller.hxx"

Controller::Controller(QObject* parent) : QObject{parent}
{
	auto client = new RTClient::Client{"https://darapsa.co.id/rt"};
	client->moveToThread(&thread);
	connect(&thread, &QThread::finished, client, &QObject::deleteLater);

	auto engine = static_cast<QQmlApplicationEngine*>(parent);
	auto rootObjects = engine->rootObjects();
	auto appWindow = rootObjects[0];

	auto loginView = appWindow->findChild<QObject*>("login");
	connect(loginView, SIGNAL(logIn(QString, QString))
			, client, SLOT(logIn(QString, QString)));
	connect(client, SIGNAL(logged(rtclient_user*))
			, loginView, SLOT(pushProfile()));
	connect(loginView, SIGNAL(ticketNew(QString, QString))
			, client, SLOT(ticketNew(QString, QString)));
	connect(loginView, SIGNAL(ticketSearch(QString))
			, client, SLOT(ticketSearch(QString)));

	using RTClient::User;
	auto typeId = qmlRegisterSingletonType<User>("KelakonUser", 0, 1, "User"
			, [](QQmlEngine *engine,
				QJSEngine *scriptEngine) -> QObject* {
			Q_UNUSED(engine)
			Q_UNUSED(scriptEngine)
			return new User;
			});
	auto user = engine->singletonInstance<User*>(typeId);
	connect(client, SIGNAL(logged(rtclient_user*))
			, user, SLOT(update(rtclient_user*)));

	taskList = new RTClient::TicketList;
	engine->rootContext()->setContextProperty("taskList", taskList);
	connect(client, SIGNAL(foundTickets(rtclient_ticketlist*))
			, taskList, SLOT(addTickets(rtclient_ticketlist*)));

	thread.start();
}

Controller::~Controller()
{
	thread.quit();
	thread.wait();
	delete taskList;
}
