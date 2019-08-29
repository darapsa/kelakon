#include "worker.hxx"
#include "controller.hxx"

Controller::Controller()
{
	Worker* worker = new Worker{};
	worker->moveToThread(&thread);
	connect(&thread, &QThread::finished, worker, &QObject::deleteLater);
	thread.start();
}

Controller::~Controller()
{
	thread.quit();
	thread.wait();
}
