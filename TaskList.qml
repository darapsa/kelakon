import QtQuick 2.12
import "larva/features"

TaskListForm {
	listView {
		objectName: "taskList"
		model: taskList
		delegate: TaskForm {
			width: parent.width
			height: task.height
			taskTitle.text: subject
            itemDelegate.onClicked: pageView.push("TaskDetails.qml")
		}
	}
}
