#ifndef CONTROLLER_HXX
#define CONTROLLER_HXX

#include <QThread>
#include <qrtclient/ticket.hxx>

struct rtclient_ticket_history_list;

class Controller : public QObject
{
	Q_OBJECT

	public:
		Controller(QObject* parent = nullptr);
		~Controller();

	signals:
		void checked(QString const& name);
		void gotTicketHistory(rtclient_ticket_history_list* list);

	private slots:
		void setTicketSubject(QString const& subject);

	private:
		QThread thread;
		RTClient::TicketList* ticketList;
		QString m_ticketSubject;
};

#endif // CONTROLLER_HXX
