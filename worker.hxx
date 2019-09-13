#ifndef WORKER_HXX
#define WORKER_HXX

#include <QObject>

class Worker : public QObject
{
	Q_OBJECT

	public:
		Worker();
		~Worker();

	public slots:
		void logIn(QString const& name, QString const& password);
		void search(QString const& owner);

	signals:
		void logged(struct rt_user* user);
		void foundTasks(struct rt_ticketlist* list);
};

#endif // WORKER_HXX
