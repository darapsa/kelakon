#include <QQmlApplicationEngine>
#include <QtQml>
#include "worker.hxx"
#include "user.hxx"
#include "tasklist.hxx"
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
	connect(worker, SIGNAL(logged(rt_user*)), loginView, SLOT(pushProfile()));
	connect(loginView, SIGNAL(search(QString)), worker, SLOT(search(QString)));

	auto user = engine->singletonInstance<User*>(User::typeId);
	connect(worker, SIGNAL(logged(rt_user*)), user, SLOT(update(rt_user*)));

	auto taskList = engine->singletonInstance<TaskList*>(TaskList::typeId);
	engine->rootContext()->setContextProperty("taskList", taskList);
	connect(worker, SIGNAL(foundTasks(rt_ticketlist*))
			, taskList, SLOT(addTasks(rt_ticketlist*)));

	thread.start();
}

Controller::~Controller()
{
	thread.quit();
	thread.wait();
}
