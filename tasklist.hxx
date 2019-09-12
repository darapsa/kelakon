#ifndef TASKLIST_HXX
#define TASKLIST_HXX

#include <QAbstractListModel>

class Task
{
	public:
		Task(unsigned int id, QString subject)
			: m_id{id}
			, m_subject{subject}
		{}
		unsigned int id() const { return m_id; }
		QString const& subject() const { return m_subject; }

	private:
		unsigned int m_id;
		QString m_subject;
};

class TaskList : public QAbstractListModel
{
	Q_OBJECT
	Q_PROPERTY(int rowCount READ rowCount NOTIFY rowCountChanged)

	public:
		enum TaskRoles {
			IdRole = Qt::UserRole + 1,
			SubjectRole
		};
		explicit TaskList(QObject* parent = nullptr)
			: QAbstractListModel{parent} {}
		int rowCount(QModelIndex const& parent = QModelIndex()) const Q_DECL_OVERRIDE;
		QVariant data(const QModelIndex& index, int role = Qt::DisplayRole) const Q_DECL_OVERRIDE;

	protected:
		QHash<int, QByteArray> roleNames() const Q_DECL_OVERRIDE;

	signals:
		void rowCountChanged();

	private:
		QList<Task> tasks;
		void addTask(Task const& task);
};

#endif // TASKLIST_HXX
