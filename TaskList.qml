import QtQuick 2.12
import QtQuick.Controls 2.12
import "forms"

TaskListForm {
	listView {
		objectName: "taskList"
		model: taskList
		delegate: TaskForm {
			width: parent.width
			height: task.height
			checkBox.text: subject
		}
	}
}
