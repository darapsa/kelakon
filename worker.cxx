#include "rtclient.h"
#include "worker.hxx"

Worker::Worker(QObject* parent) :
	QObject{parent}
{
	rtclient_init();
}

void Worker::logIn(QString const& name, QString const& password)
{
	rtclient_login(name.toLatin1().constData(), password.toLatin1().constData());
}

Worker::~Worker()
{
	rtclient_cleanup();
}
