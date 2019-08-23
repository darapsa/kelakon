#include "rtclient.h"
#include "networkworker.hxx"

namespace Kelakon {

	NetworkWorker::NetworkWorker(QObject* parent)
		: QObject{parent}
	{
		rtclient_init();
	}

	NetworkWorker::~NetworkWorker()
	{
		rtclient_cleanup();
	}
}
