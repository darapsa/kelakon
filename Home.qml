import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Page {
	StackLayout {
		id: layout
		anchors.fill: parent

		Page {}

		ListView {
			model: ticketList
			delegate: TicketForm {
				width: layout.width
				title.text: subject
				delegate.onClicked: {
					window.ticketHistoryList(id, true)
				}
			}
			ScrollBar.vertical: ScrollBar {}
		}

		Page {}
	}

	footer: MainTabBarForm {
		width: parent.width
		leftTabButton.onClicked: layout.currentIndex = 0
		middleTabButton.onClicked: layout.currentIndex = 1
		rightTabButton.onClicked: layout.currentIndex = 2
	}
}
