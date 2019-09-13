#ifndef TASKLIST_HXX
#define TASKLIST_HXX

#include <QAbstractListModel>
#include "rtticket.h"

class Task
{
	public:
		Task(QString subject) : m_subject{subject}
		{}
		QString const& subject() const { return m_subject; }

	private:
		QString m_subject;
};

class TaskList : public QAbstractListModel
{
	Q_OBJECT
	Q_PROPERTY(int rowCount READ rowCount NOTIFY rowCountChanged)

	public:
		enum TaskRoles {
			SubjectRole = Qt::UserRole + 1,
		};

		explicit TaskList(QObject* parent = nullptr)
			: QAbstractListModel{parent} {}
		~TaskList() {}
		inline static int typeId;

		int rowCount(QModelIndex const& parent = QModelIndex()) const Q_DECL_OVERRIDE;
		QVariant data(const QModelIndex& index, int role = Qt::DisplayRole) const Q_DECL_OVERRIDE;

	protected:
		QHash<int, QByteArray> roleNames() const Q_DECL_OVERRIDE;

	signals:
		void rowCountChanged();

	private:
		QList<Task> tasks;
		void addTask(Task const& task);

	private slots:
		void addTasks(rt_ticketlist* taskList);
};

#endif // TASKLIST_HXX
