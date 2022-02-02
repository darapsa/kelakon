#include <QStringBuilder>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <qrtclient/user.hxx>
#include "controller.hxx"

Controller::Controller(QObject* parent) : QObject{parent}
{
	auto dir = QDir{QStandardPaths::writableLocation(
			QStandardPaths::AppDataLocation)};
	auto dirPath = dir.absolutePath();
#ifdef __ANDROID__
	QString cert{CA_BUNDLE};
	QString certPath{dirPath % cert.remove(0, cert.lastIndexOf("/"))};
	QFile{"assets:" % cert}.copy(certPath);
#else
	dir.mkpath(dirPath);
#endif
	rt = new Client{SERVER_URL,
		QString{dirPath % "/cookies.txt"}.toLatin1().constData()
#ifdef __ANDROID__
		, certPath.toLatin1().constData()
#endif
	};
	auto engine = static_cast<QQmlApplicationEngine*>(parent);
	engine->load(QUrl(QStringLiteral("qrc:/main.qml")));
	auto context = engine->rootContext();
	auto window = engine->rootObjects()[0];
	connect(window, SIGNAL(logIn(QString, QString)),
			rt, SLOT(logIn(QString, QString)));
	connect(rt, &Client::loggedIn,
			rt, static_cast<void (Client::*)(QString const&)>
			(&Client::userShow));
	connect(rt, &Client::userShown, [this](User const& user) {
			rt->searchTicket(user.name());
		});
	connect(rt, &Client::searchedTicket,
		[this,context,window](TicketList const& list) {
			ticketList = new TicketList{list};
			context->setContextProperty("ticketList", ticketList);
			QMetaObject::invokeMethod(window, "pushHome");
		});
	connect(window, SIGNAL(ticketHistoryList(int, bool)),
			rt, SLOT(ticketHistoryList(int, bool)));
	connect(rt, &Client::gotTicketHistoryList,
		[this,context,window](TicketHistoryList const& list) {
			historyList = new TicketHistoryList{list};
			context->setContextProperty("historyList", historyList);
			QMetaObject::invokeMethod(window, "pushTicketHistory");
		});
	connect(window, SIGNAL(ticketNew(QString, QString)),
			rt, SLOT(ticketNew(QString, QString)));
}

Controller::~Controller()
{
	if (historyList) delete historyList;
	if (ticketList) delete ticketList;
	if (rt) delete rt;
}
