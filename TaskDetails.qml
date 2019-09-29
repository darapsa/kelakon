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

        TaskBriefForm {
            id: taskBriefForm
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
	    ticketSubject.text: subject
        }

        TaskHistoryForm {
            id: taskHistoryForm
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: taskBriefForm.bottom
            anchors.topMargin: 0
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
