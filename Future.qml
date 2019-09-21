import QtQuick 2.12
import "forms"

DayForm {
	title: qsTr("Future task")
	contentLabel.text: qsTr("You are back to the future.")
	TaskList {
		anchors.bottom: contentLabel.top
	}
}
