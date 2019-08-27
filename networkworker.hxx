#ifndef NETWORKWORKER_HXX
#define NETWORKWORKER_HXX

#include <QObject>

class NetworkWorker : public QObject
{
	Q_OBJECT
	public:
		explicit NetworkWorker(QObject* parent = nullptr);
		virtual ~NetworkWorker();
};

#endif // NETWORKWORKER_HXX
