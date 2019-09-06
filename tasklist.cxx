#include "tasklist.hxx"

int TaskList::rowCount(QModelIndex const& parent) const
{
	Q_UNUSED(parent)
	return tasks.count();
}

QVariant TaskList::data(QModelIndex const& index, int role) const
{
	auto row = index.row();

	if (row < 0 || row >= tasks.count()) return QVariant();

	auto task = tasks[row];
	switch (role) {
		case IdRole:
			return task.id();
		case SubjectRole:
			return task.subject();
		default:
			return QVariant();
	}
}

QHash<int, QByteArray> TaskList::roleNames() const
{
	return QHash<int, QByteArray>{
		{IdRole, "id"},
		{SubjectRole, "subject"}
	};
}

void TaskList::addTask(Task const& task)
{
	beginInsertRows(QModelIndex(), rowCount(), rowCount());
	tasks << task;
	endInsertRows();
	emit rowCountChanged();
}
