import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import "larva/features"

TaskDetailForm {
	property string subject
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
        }
        Label {
            id: attachmentSeparator
            color: "#000000"
            text: qsTr("Attachments")
            anchors.left: parent.left
            anchors.leftMargin: 16
            anchors.top: ticketBriefForm.bottom
            anchors.topMargin: 8
            font.weight: Font.Medium
            font.pixelSize: 16
            font.family: "Work Sans"
        }

        TicketAttachmentForm {
            id: ticketAttachmentForm
            anchors.top: attachmentSeparator.bottom
            anchors.topMargin: 16
            anchors.right: parent.right
            anchors.rightMargin: 16
            anchors.left: parent.left
            anchors.leftMargin: 16
        }
        Label {
            id: activitiesSeparator
            color: "#000000"
            text: qsTr("Activities")
            font.weight: Font.Medium
            font.pixelSize: 16
            font.family: "Work Sans"
            anchors.left: parent.left
            anchors.leftMargin: 16
            anchors.top: ticketAttachmentForm.bottom
            anchors.topMargin: 24
        }

		TaskHistoryForm {
            id: taskHistoryForm
			anchors.right: parent.right
			anchors.rightMargin: 0
			anchors.left: parent.left
			anchors.leftMargin: 0
            anchors.top: activitiesSeparator.bottom
            anchors.topMargin: 16
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
