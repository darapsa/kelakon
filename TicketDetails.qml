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
			id: ticketBriefForm
			anchors.top: parent.top
			anchors.topMargin: 0
			anchors.right: parent.right
			anchors.rightMargin: 0
			anchors.left: parent.left
			anchors.leftMargin: 0
			ticketSubject.text: subject
		}

		TaskHistoryForm {
			anchors.right: parent.right
			anchors.rightMargin: 0
			anchors.left: parent.left
			anchors.leftMargin: 0
			anchors.top: ticketBriefForm.bottom
			anchors.topMargin: 0
		}
	}
}