import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import "larva/features"

TaskDetailForm {
	property string subject
	property string description
	property string content
	property string creator

	backButton.onClicked: pageView.pop()

	StackView {
		id: contentView
		anchors.fill: parent
		background: Rectangle {
			color: "#FFFFFF"
		}

		TaskBriefForm {
			id: ticketBriefForm
			anchors.top: parent.top
			anchors.topMargin: 0
			anchors.right: parent.right
			anchors.rightMargin: 0
			anchors.left: parent.left
			anchors.leftMargin: 0
			ticketSubject.text: subject
			ticketCreator.text: creator
			ticketCreatedText.text: description
		}

		Label {
			id: separator
			color: "#000000"
			text: qsTr("Activities")
			font.weight: Font.Medium
			font.pixelSize: 16
			font.family: "Work Sans"
			anchors.left: parent.left
			anchors.leftMargin: 16
			anchors.top: ticketBriefForm.bottom
			anchors.topMargin: 8
		}

		TaskHistoryForm {
			anchors.right: parent.right
			anchors.rightMargin: 0
			anchors.left: parent.left
			anchors.leftMargin: 0
			anchors.top: separator.bottom
			anchors.topMargin: 8
			creator.text: creator
			ticketDescription.text: content
		}
	}
}
