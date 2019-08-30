#ifndef CONTROLLER_HXX
#define CONTROLLER_HXX

#include <QThread>

class Controller : public QObject
{
	Q_OBJECT

	public:
		Controller();
		~Controller();
		Q_INVOKABLE void logIn(QString const& name, QString const& password);

	signals:
		void credentialsObtained(QString const& name, QString const& password);

	private:
		QThread thread;
};

#endif // CONTROLLER_HXX
