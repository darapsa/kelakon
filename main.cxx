#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "controller.hxx"

int main(int argc, char* argv[])
{
	QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
	QGuiApplication app(argc, argv);
	QQmlApplicationEngine engine;
	Controller controller{&engine};
	return app.exec();
}
