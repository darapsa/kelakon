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
	auto typeId = qmlRegisterSingletonType<User>("id.co.darapsa.kelakon.rtclient", 0, 1, "RTClient", [](QQmlEngine *engine, QJSEngine *scriptEngine) -> QObject* {
		Q_UNUSED(engine)
		Q_UNUSED(scriptEngine)
		return new Controller{};
	});
	auto controller = engine.singletonInstance<Controller*>(typeId);
	Q_UNUSED(controller)
	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

	return app.exec();
}
