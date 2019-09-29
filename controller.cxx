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
	auto qUser = engine->singletonInstance<User*>(typeId);

	using RTClient::TicketList;
	taskList = new TicketList;
	engine->rootContext()->setContextProperty("taskList", taskList);

	connect(appWindow, SIGNAL(logIn(QString, QString))
			, client, SLOT(logIn(QString, QString)));

	connect(client, &Client::loggedIn
			, client, static_cast<void (Client::*)(QString const&)>
			(&Client::userShow));

	connect(client, &Client::userShown, [this,qUser](rtclient_user* user) {
			if (user) {
				emit checked(QString{user->name});
				qUser->update(user);
			}
		});

	connect(this, static_cast<void (Controller::*)(QString const&)>
			(&Controller::checked)
			, client, &Client::ticketSearch);

	connect(client, &Client::ticketSearched, taskList, &TicketList::update);

	connect(client, &Client::loggedIn, [appWindow,this]() {
			auto loginView = appWindow->findChild<QObject*>("login");
			connect(taskList, &TicketList::updated, [loginView]() {
					QMetaObject::invokeMethod(loginView
							, "pushHome");
					});
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
