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
            taskTitle.text: subject
		}
	}
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
