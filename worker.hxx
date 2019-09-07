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
};

#endif // WORKER_HXX
