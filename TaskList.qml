import QtQuick 2.12
import "forms"

TaskListForm {
	listView {
		objectName: "taskList"
		model: taskList
		delegate: TaskForm {
			width: parent.width
			height: task.height
			taskTitle.text: subject
			itemDelegate.onClicked: contentView.push("TaskDetails.qml")
		}
	}
}
