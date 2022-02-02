#ifndef CONTROLLER_HXX
#define CONTROLLER_HXX

#include <qrtclient.hxx>
#include <qrtclient/ticket.hxx>
#include <qrtclient/tickethistory.hxx>

using namespace RTClient;

class Controller : public QObject
{
	Q_OBJECT
	public:
		Controller(QObject* parent = nullptr);
		~Controller();
	private:
		Client* rt;
		TicketList* ticketList;
		TicketHistoryList* historyList;
};

#endif
