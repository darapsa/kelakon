import QtQuick 2.12
import "larva/components"
import "larva/features"

TaskListForm {
	listView {
		model: ticketList
		delegate: ListItemSingleTextForm {
			title.text: subject
			/*
			itemDelegate.onClicked: {
				window.ticketHistory(id, true)
				pageView.push("TicketHistory.qml"
						, {"subject": subject})
			}
			*/
		}
	}
}
