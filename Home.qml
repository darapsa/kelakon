import QtQuick 2.12
import QtQuick.Controls 2.12
import "larva/features"

HomeForm {
	menuButton.onClicked: drawer.open()
	profileButton.onClicked: pageView.push("Profile.qml")

	Drawer {
		id: drawer
		width: window.width * 0.8
		height: window.height
		visible: false

		DayListForm {
			todayItemDelegate {
				text: qsTr("Today")
				onClicked: {
					contentView.push("TicketList.qml")
					var ticketList = contentView.currentItem
					ticketList.title = qsTr("Today")
					drawer.close()
				}
			}

			futureItemDelegate {
				text:qsTr("Future")
				onClicked: {
					contentView.push("TicketList.qml")
					var ticketList = contentView.currentItem
					ticketList.title = qsTr("Future ticket")
					drawer.close()
				}
			}
		}
	}

	contentView.initialItem: TicketList {
		title: qsTr("Today")
	}
}
