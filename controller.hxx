#ifndef CONTROLLER_HXX
#define CONTROLLER_HXX

#include <QThread>

class Controller : public QObject
{
	Q_OBJECT

	public:
		Controller(QObject* parent = nullptr);
		~Controller();

	private:
		QThread thread;
		class TaskList* taskList;
};

#endif // CONTROLLER_HXX
