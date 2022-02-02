import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import "larva/features"

TaskDetailForm {
	property string subject

	backButton.onClicked: pageView.pop()

	ticketBriefForm {
		ticketSubject.text: subject
//		ticketCreator.text: creator
	}

	listView {
		height: 1000
		model: historyList
		delegate: TaskHistoryForm {
			creatorText.text: creator
			ticketDescription.text: content
			ticketDate.text: created
		}
	}

}
