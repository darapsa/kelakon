#include <QQmlApplicationEngine>
#include "worker.hxx"
#include "user.hxx"
#include "controller.hxx"

Controller::Controller(QObject* parent) : QObject{parent}
{
	auto worker = new Worker;
	worker->moveToThread(&thread);
	connect(&thread, &QThread::finished, worker, &QObject::deleteLater);

	auto engine = static_cast<QQmlApplicationEngine*>(parent);
	auto rootObjects = engine->rootObjects();
	auto appWindow = rootObjects[0];

	auto loginView = appWindow->findChild<QObject*>("login");
	connect(loginView, SIGNAL(logIn(QString, QString)),
			worker, SLOT(logIn(QString, QString)));

	auto user = engine->singletonInstance<User*>(User::typeId);
	connect(worker, SIGNAL(logged(rt_user*))
			, user, SLOT(update(rt_user*)));

	thread.start();
}

Controller::~Controller()
{
	thread.quit();
	thread.wait();
}
