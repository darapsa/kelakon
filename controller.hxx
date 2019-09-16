#ifndef CONTROLLER_HXX
#define CONTROLLER_HXX

#include <QThread>
#include <qrtclient/ticket.hxx>

class Controller : public QObject
{
	Q_OBJECT

	public:
		Controller(QObject* parent = nullptr);
		~Controller();

	private:
		QThread thread;
		RTClient::TicketList* taskList;
};

#endif // CONTROLLER_HXX
