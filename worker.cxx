#include "rtclient.h"
#include "worker.hxx"

Worker::Worker()
{
	rtclient_init("https://darapsa.co.id/rt");
}

void Worker::logIn(QString const& name, QString const& password)
{
	rtclient_login(name.toLatin1().constData(), password.toLatin1().constData());
	auto user = rtclient_userget(name.toLatin1().constData());
	rtclient_userfree(user);
}

void Worker::search(QString const& owner)
{
	QString query{"Owner='"};
	query.append(owner);
	query.append("'");
	rtclient_search(query.toLatin1().constData());
}

Worker::~Worker()
{
	rtclient_cleanup();
}
