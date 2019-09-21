import QtQuick 2.12
import "forms"

DayForm {
	title: qsTr("Today")
	contentLabel.text: qsTr("Load `contentView` here")
	TaskList {
		anchors.bottom: contentLabel.top
	}
}
