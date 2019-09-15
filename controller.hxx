#ifndef CONTROLLER_HXX
#define CONTROLLER_HXX

#include <QThread>
#include <qrtclient/ticket.hxx>
#include <qrtclient/client.hxx>

class Controller : public QObject
{
	Q_OBJECT

	public:
		Controller(QObject* parent = nullptr);
		~Controller();

	private:
		QThread thread;
		class RTClient::TicketList* taskList;
};

#endif // CONTROLLER_HXX
