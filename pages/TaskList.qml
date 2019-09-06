import QtQuick 2.12
import QtQuick.Controls 2.12

TaskListForm {
	objectName: "taskList"
	model: taskList
	delegate: TaskForm {
		width: parent.width
		height: task.height

		checkBox.text: subject
	}

	menuButton {
		onClicked: {
			drawer.visible = !drawer.visible
		}
	}

	ScrollBar.vertical: ScrollBar {}
}
