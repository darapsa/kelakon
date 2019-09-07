#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "user.hxx"
#include "controller.hxx"
#include "tasklist.hxx"

int main(int argc, char* argv[])
{
	QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
	QGuiApplication app(argc, argv);
	QQmlApplicationEngine engine;
	User::typeId = qmlRegisterSingletonType<User>("id.co.darapsa.kelakon.user"
			, 0, 1, "User"
			, [](QQmlEngine *engine, QJSEngine *scriptEngine) -> QObject* {
			Q_UNUSED(engine)
			Q_UNUSED(scriptEngine)
			return new User{};
			});
	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
	Controller controller{&engine};
	TaskList taskList;
	engine.rootContext()->setContextProperty("taskList", &taskList);
	return app.exec();
}
