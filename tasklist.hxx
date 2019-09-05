#ifndef TASKLIST_HXX
#define TASKLIST_HXX

#include <QAbstractListModel>

struct Task
{
	enum TaskRoles {
		IdRole = Qt::UserRole + 1,
		SubjectRole
	};
	QString id;
	QString subject;
};

class TaskList : public QAbstractListModel
{
	Q_OBJECT
	Q_PROPERTY(int rowCount READ rowCount NOTIFY rowCountChanged)

	public:
		explicit TaskList(QObject* parent = nullptr) : QAbstractListModel{parent} {}
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
