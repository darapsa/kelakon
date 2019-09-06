import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Item {
	property alias task: task
	property alias checkBox: checkBox
	width: 360

	RowLayout {
		id: task
		height: 72
		anchors.topMargin: 8
		anchors.right: parent.right
		anchors.rightMargin: 0
		anchors.left: parent.left
		anchors.leftMargin: 0
		spacing: 8

		CheckBox {
			id: checkBox
			height: 54
			text: qsTr("This is a task title")
			padding: 8
			rightPadding: 16
			leftPadding: 16
			bottomPadding: 16
			topPadding: 16
			Layout.fillWidth: true
			font.family: "Google Sans"
			font.pointSize: 16
			font.weight: Font.Medium
			spacing: 24
		}
		RoundButton {
			id: chevronRight
			flat: true
			icon.name: "chevron-right-icon"
			icon.source: "/assets/chevron-right-24px.svg"
			icon.color: "#99000000"
		}
	}
}
