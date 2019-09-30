import QtQuick 2.12
import "larva/features"

TaskListForm {
	listView {
		model: ticketList
		delegate: TaskForm {
			width: parent.width
			height: task.height
			taskTitle.text: subject
			itemDelegate.onClicked: {
				window.ticketHistory(id)
				pageView.push("TicketDetails.qml"
					, {"subject": subject})
			}
		}
	}
}
