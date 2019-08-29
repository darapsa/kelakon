#ifndef CONTROLLER_HXX
#define CONTROLLER_HXX

#include <QThread>

class Controller : public QObject
{
	Q_OBJECT

	public:
		Controller();
		~Controller();

	private:
		QThread thread;
};

#endif // CONTROLLER_HXX
