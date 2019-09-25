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
	QDir location{QStandardPaths::writableLocation
		(QStandardPaths::AppDataLocation)};
	QString path{location.absolutePath() % "/ca-certificates.crt"};
	QFile file{"assets:/certs/ca-certificates.crt"};
	file.copy(path);
	auto client = new RTClient::Client{"https://darapsa.co.id/rt"
		, path.toLatin1().constData()};
#else
	auto client = new RTClient::Client{"https://darapsa.co.id/rt"};
#endif
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
	taskList = new RTClient::TicketList;
	engine->rootContext()->setContextProperty("taskList", taskList);

	connect(appWindow, SIGNAL(logIn(QString, QString))
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

	connect(taskList, SIGNAL(updated()), appWindow, SLOT(pushHome()));

	connect(appWindow, SIGNAL(ticketNew(QString, QString))
			, client, SLOT(ticketNew(QString, QString)));

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
