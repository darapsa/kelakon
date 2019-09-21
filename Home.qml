import QtQuick 2.12
import QtQuick.Controls 2.12
import "forms"

HomeForm {
	menuButton {
		icon.source: "assets/menu-24px.svg"
		onClicked: drawer.open()
	}

	titleLabel.text: contentView.currentItem.title

	profileButton {
		icon.source: "assets/profile-24px.svg"
		onClicked: pageView.push("Profile.qml")
	}

	roundButton.icon.source: "/assets/add-24px.svg"

	Drawer {
		id: drawer
		width: window.width * 0.8
		height: window.height
		visible: false

		DayListForm {
			todayItemDelegate {
				text: qsTr("Today")
				onClicked: {
					contentView.push("Today.qml")
					drawer.close()
				}
			}

			futureItemDelegate {
				text:qsTr("Future")
				onClicked: {
					contentView.push("Future.qml")
					drawer.close()
				}
			}
		}
	}
}
