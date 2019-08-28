#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QThread>
#include "user.hxx"
#include "networkworker.hxx"

int main(int argc, char* argv[])
{
	QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
	QGuiApplication app(argc, argv);
	QQmlApplicationEngine engine;

	NetworkWorker worker{};
	QThread thread;
	worker.moveToThread(&thread);

	qmlRegisterSingletonType<User>("id.co.darapsa.kelakon.user", 0, 1, "User", [](QQmlEngine *engine, QJSEngine *scriptEngine) -> QObject* {
		Q_UNUSED(engine)
		Q_UNUSED(scriptEngine)

		User* user = new User{};
		return user;
	});
	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

	thread.start();

	return app.exec();
}
