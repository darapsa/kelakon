#include <QQmlApplicationEngine>
#include "rtclient.h"
#include "user.hxx"
#include "worker.hxx"

Worker::Worker(QObject* parent) :
	QObject{parent}
{
	rtclient_init("https://darapsa.co.id/rt");
}

void Worker::logIn(QString const& name, QString const& password)
{
	auto engine = dynamic_cast<QQmlApplicationEngine*>(this->parent());
	auto user = engine->singletonInstance<User*>(User::typeId);
	user->setName(name);
	rtclient_login(name.toLatin1().constData(), password.toLatin1().constData());
	rtclient_user(name.toLatin1().constData());
}

void Worker::getTaskList()
{
	auto engine = dynamic_cast<QQmlApplicationEngine*>(this->parent());
	auto user = engine->singletonInstance<User*>(User::typeId);
	QString query{"Owner='"};
	query.append(user->name());
	query.append("'");
	rtclient_search(query.toLatin1().constData());
}

Worker::~Worker()
{
	rtclient_cleanup();
}
