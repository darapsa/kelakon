#ifndef CONTROLLER_HXX
#define CONTROLLER_HXX

#include <QThread>
#include <qrtclient/ticket.hxx>
#include <qrtclient/tickethistory.hxx>

class Controller : public QObject
{
	Q_OBJECT

	public:
		Controller(QObject* parent = nullptr);
		~Controller();

	signals:
		void checked(QString const& name);

	private:
		QThread thread;
		RTClient::TicketList* ticketList;
		RTClient::TicketHistoryList* ticketHistoryList;
};

#endif // CONTROLLER_HXX
