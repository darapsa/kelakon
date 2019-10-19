#ifdef ANDROID
#include <QStringBuilder>
#endif
#include <QQmlApplicationEngine>
#include <QtQml>
#include <qrtclient/client.hxx>
#include <qrtclient/user.hxx>
#include "controller.hxx"

Controller::Controller(QObject* parent)
	: QObject{parent}
{
#ifdef ANDROID
	QDir location{QStandardPaths::writableLocation(QStandardPaths
			::AppDataLocation)};
	QString path{location.absolutePath() % "/ca-certificates.crt"};
	QFile file{"assets:/certs/ca-certificates.crt"};
	file.copy(path);
#endif
	using RTClient::Client;
	auto client = new Client{"https://rt.darapsa.co.id"
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
	ticketList = new TicketList;
	engine->rootContext()->setContextProperty("ticketList", ticketList);

	using RTClient::TicketHistoryList;
	ticketHistoryList = new TicketHistoryList;
	engine->rootContext()->setContextProperty("ticketHistoryList"
			, ticketHistoryList);

	connect(appWindow, SIGNAL(logIn(QString, QString))
			, client, SLOT(logIn(QString, QString)));

	connect(client, &Client::loggedIn
			, client, static_cast<void (Client::*)(QString const&)>
			(&Client::userShow));

	connect(client, &Client::userShown
			, [this,qUser,appWindow](rtclient_user* user) {
			if (user) {
				emit checked(QString{user->name});
				qUser->update(user);
				QMetaObject::invokeMethod(appWindow, "pushHome");
			}
		});

	connect(this, &Controller::checked, client, &Client::searchTicket);

	connect(client, &Client::searchedTicket, ticketList, &TicketList::update);

	connect(appWindow, SIGNAL(ticketHistory(int, bool))
			, client, SLOT(ticketHistory(int, bool)));

	connect(client, &Client::gotTicketHistory
			, ticketHistoryList, &TicketHistoryList::update);

	connect(appWindow, SIGNAL(ticketNew(QString, QString))
			, client, SLOT(ticketNew(QString, QString)));

	thread.start();
}

Controller::~Controller()
{
	thread.quit();
	thread.wait();
	delete ticketHistoryList;
	delete ticketList;
}
