#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "user.hxx"
#include "controller.hxx"

int main(int argc, char* argv[])
{
	QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
	QGuiApplication app(argc, argv);
	QQmlApplicationEngine engine;

	qmlRegisterSingletonType<User>("id.co.darapsa.kelakon.user", 0, 1, "User", [](QQmlEngine *engine, QJSEngine *scriptEngine) -> QObject* {
		Q_UNUSED(engine)
		Q_UNUSED(scriptEngine)
		return new User{};
	});
	qmlRegisterSingletonType<User>("id.co.darapsa.kelakon.rtclient", 0, 1, "RTClient", [](QQmlEngine *engine, QJSEngine *scriptEngine) -> QObject* {
		Q_UNUSED(engine)
		Q_UNUSED(scriptEngine)
		return new Controller{};
	});
	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

	return app.exec();
}
