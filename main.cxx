#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QThread>
#include "networkworker.hxx"

int main(int argc, char* argv[])
{
	QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
	QGuiApplication app(argc, argv);
	QQmlApplicationEngine engine;

	NetworkWorker worker{};
	QThread thread;
	worker.moveToThread(&thread);

	engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

	thread.start();

	return app.exec();
}
