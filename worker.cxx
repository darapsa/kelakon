#ifdef DEBUG
#include <QDebug>
#endif // DEBUG
#include "rtclient.h"
#include "worker.hxx"

Worker::Worker()
{
	rtclient_init("https://darapsa.co.id/rt");
}

void Worker::logIn(QString const& name, QString const& password)
{
	rtclient_login(name.toLatin1().constData(), password.toLatin1().constData());
	struct rt_user *user = NULL;
	rtclient_userget(&user, name.toLatin1().constData());
	if (user) emit logged(user);
}

void Worker::search(QString const& owner)
{
	QString query{"Owner='"};
	query.append(owner);
	query.append("'");
	rt_ticketlist *tasks = NULL;
	rtclient_search(&tasks, query.toLatin1().constData());
	if (tasks) {
#ifdef DEBUG
		for (unsigned short i = 0; i < tasks->length; i++) {
			auto task = tasks->tickets[i];
			qDebug() << "Task: " << task;
			if (task) free(task);
		}
#endif // DEBUG
		free(tasks);
	}
}

Worker::~Worker()
{
	rtclient_cleanup();
}
