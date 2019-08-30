#ifndef WORKER_HXX
#define WORKER_HXX

#include <QObject>

class Worker : public QObject
{
	Q_OBJECT

	public:
		explicit Worker(QObject* parent = nullptr);
		virtual ~Worker();

	public slots:
		void logIn(QString const& name, QString const& password);
};

#endif // WORKER_HXX
