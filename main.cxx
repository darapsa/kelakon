#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "user.hxx"
#include "tasklist.hxx"
#include "controller.hxx"

int main(int argc, char* argv[])
{
	QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
	QGuiApplication app(argc, argv);
	QQmlApplicationEngine engine;

	User::typeId = qmlRegisterSingletonType<User>("KelakonUser", 0, 1, "User"
			, [](QQmlEngine *engine,
				QJSEngine *scriptEngine) -> QObject* {
			Q_UNUSED(engine)
			Q_UNUSED(scriptEngine)
			return new User;
			});

	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
	Controller controller{&engine};

	return app.exec();
}
