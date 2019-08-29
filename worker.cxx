#include "rtclient.h"
#include "worker.hxx"

Worker::Worker(QObject* parent) :
	QObject{parent}
{
	rtclient_init();
}

Worker::~Worker()
{
	rtclient_cleanup();
}
