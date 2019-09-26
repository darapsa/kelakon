#ifdef ANDROID
#include <QStringBuilder>
#endif
#include <QQmlApplicationEngine>
#include <QtQml>
#include <qrtclient/client.hxx>
#include <qrtclient/user.hxx>
#include "controller.hxx"

Controller::Controller(QObject* parent) : QObject{parent}
{
#ifdef ANDROID
	QDir location{QStandardPaths::writableLocation(QStandardPaths
			::AppDataLocation)};
	QString path{location.absolutePath() % "/ca-certificates.crt"};
	QFile file{"assets:/certs/ca-certificates.crt"};
	file.copy(path);
#endif
	using RTClient::Client;
	auto client = new Client{"https://darapsa.co.id/rt"
#ifdef ANDROID
		, path.toLatin1().constData()
#endif
	};
	client->moveToThread(&thread);
	connect(&thread, &QThread::finished, client, &QObject::deleteLater);

	auto engine = static_cast<QQmlApplicationEngine*>(parent);
	auto rootObjects = engine->rootObjects();
	auto appWindow = rootObjects[0];

	using RTClient::User;
	auto typeId = qmlRegisterSingletonType<User>("KelakonUser", 0, 1, "User"
			, [](QQmlEngine *engine
				, QJSEngine *scriptEngine) -> QObject* {
			Q_UNUSED(engine)
			Q_UNUSED(scriptEngine)
			return new User;
			});
	auto user = engine->singletonInstance<User*>(typeId);

	using RTClient::TicketList;
	taskList = new TicketList;
	engine->rootContext()->setContextProperty("taskList", taskList);

	connect(appWindow, SIGNAL(logIn(QString, QString))
			, client, SLOT(logIn(QString, QString)));

	connect(client, &Client::loggedIn
			, client, static_cast<void (Client::*)(QString const&)>
			(&Client::userShow));

	connect(client, &Client::userShown, [this](rtclient_user* user) {
			if (user) {
				emit checked(QString{user->name});
				emit checked(user);
			}
		});

	connect(this, static_cast<void (Controller::*)(rtclient_user*)>
			(&Controller::checked)
			, user, &User::update);
	connect(this, static_cast<void (Controller::*)(QString const&)>
			(&Controller::checked)
			, client, &Client::ticketSearch);

	connect(client, &Client::ticketSearched, taskList, &TicketList::update);

	connect(taskList, &TicketList::updated, [appWindow]() {
			QMetaObject::invokeMethod(appWindow, "pushHome");
			});

	connect(appWindow, SIGNAL(ticketHistory(int))
			, client, SLOT(ticketHistory(int)));

	connect(appWindow, SIGNAL(ticketNew(QString, QString))
			, client, SLOT(ticketNew(QString, QString)));

	thread.start();
}

Controller::~Controller()
{
	thread.quit();
	thread.wait();
	delete taskList;
}
