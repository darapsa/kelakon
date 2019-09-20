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
	auto onboardingView = appWindow->findChild<QObject*>("onboarding");
	using RTClient::User;
	auto typeId = qmlRegisterSingletonType<User>("KelakonUser", 0, 1, "User"
			, [](QQmlEngine *engine
				, QJSEngine *scriptEngine) -> QObject* {
			Q_UNUSED(engine)
			Q_UNUSED(scriptEngine)
			return new User;
			});
	auto user = engine->singletonInstance<User*>(typeId);
	taskList = new RTClient::TicketList;
	engine->rootContext()->setContextProperty("taskList", taskList);

	connect(onboardingView, SIGNAL(logIn(QString, QString))
			, client, SLOT(logIn(QString, QString)));

	connect(client, SIGNAL(loggedIn(QString))
			, client, SLOT(userShow(QString)));

	connect(client, SIGNAL(userShown(rtclient_user*))
			, this, SLOT(check(rtclient_user*)));

	connect(this, SIGNAL(checked(rtclient_user*))
			, user, SLOT(update(rtclient_user*)));

	connect(this, SIGNAL(checked(QString))
			, client, SLOT(ticketSearch(QString)));

	connect(client, SIGNAL(ticketSearched(rtclient_ticketlist*))
			, taskList, SLOT(update(rtclient_ticketlist*)));

	connect(onboardingView, SIGNAL(ticketNew(QString, QString))
			, client, SLOT(ticketNew(QString, QString)));

	connect(taskList, SIGNAL(updated()), onboardingView, SLOT(pushHome()));

	thread.start();
}

void Controller::check(rtclient_user* user)
{
	if (user) {
		emit checked(QString{user->name});
		emit checked(user);
	}
}

Controller::~Controller()
{
	thread.quit();
	thread.wait();
	delete taskList;
}
