import QtQuick 2.12
import QtQuick.Controls 2.12
import "forms"

TaskListForm {
	objectName: "taskList"
	model: taskList
	delegate: TaskForm {
		width: parent.width
		height: task.height
		checkBox.text: subject
	}
	ScrollBar.vertical: ScrollBar {}
}
