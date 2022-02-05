import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "larva/features"
import "larva/components"

HomeForm {
	//menuButton.onClicked: drawer.open()
	//profileButton.onClicked: pageView.push("Profile.qml")

	StackLayout {
		id: layout
		anchors.fill: parent

		Page {}

		TaskListForm {
			listView {
				model: ticketList
				delegate: ListItemSingleTextForm {
					title.text: subject
					delegate.onClicked: {
						window.ticketHistoryList(id,
						true)
					}
				}
			}
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
