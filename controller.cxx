#include "worker.hxx"
#include "controller.hxx"

Controller::Controller(QObject* parent) :
	QObject{parent}
{
	Worker* worker = new Worker{};
	worker->moveToThread(&thread);
	connect(&thread, &QThread::finished, worker, &QObject::deleteLater);
	connect(parent, SIGNAL(logIn(QString, QString)),
			worker, SLOT(logIn(QString, QString)));
	thread.start();
}

Controller::~Controller()
{
	thread.quit();
	thread.wait();
}
