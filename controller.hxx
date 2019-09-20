#ifndef CONTROLLER_HXX
#define CONTROLLER_HXX

#include <QThread>
#include <qrtclient/ticket.hxx>

struct rtclient_user;

class Controller : public QObject
{
	Q_OBJECT

	public:
		Controller(QObject* parent = nullptr);
		~Controller();

	signals:
		void checked(rtclient_user* user);
		void checked(QString const& name);

	private slots:
		void check(rtclient_user* user);

	private:
		QThread thread;
		RTClient::TicketList* taskList;
};

#endif // CONTROLLER_HXX
