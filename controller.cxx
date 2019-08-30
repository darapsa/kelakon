#include "worker.hxx"
#include "controller.hxx"

Controller::Controller()
{
	Worker* worker = new Worker{};
	worker->moveToThread(&thread);
	connect(&thread, &QThread::finished, worker, &QObject::deleteLater);
	connect(this, &Controller::credentialsObtained, worker, &Worker::logIn);
	thread.start();
}

void Controller::logIn(QString const& name, QString const& password)
{
	emit credentialsObtained(name, password);
}

Controller::~Controller()
{
	thread.quit();
	thread.wait();
}
