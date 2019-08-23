#ifndef NETWORKWORKER_HXX
#define NETWORKWORKER_HXX

#include <QObject>

namespace Kelakon {

	class NetworkWorker : public QObject
	{
		Q_OBJECT
		public:
			explicit NetworkWorker(QObject* parent = Q_NULLPTR);
			virtual ~NetworkWorker();
	};
}

#endif // NETWORKWORKER_HXX
