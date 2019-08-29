#ifndef WORKER_HXX
#define WORKER_HXX

#include <QObject>

class Worker : public QObject
{
	Q_OBJECT
	public:
		explicit Worker(QObject* parent = nullptr);
		virtual ~Worker();
};

#endif // WORKER_HXX
