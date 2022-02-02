import QtQuick 2.15
import QtQuick.Controls 2.15

TabBar {
	property alias leftTabButton: leftTabButton
	property alias middleTabButton: middleTabButton
	property alias rightTabButton: rightTabButton

	id: tabBar
	width: 360

	TabButton {
		id: leftTabButton

		Image {
			anchors.centerIn: parent
		}
	}

	TabButton {
		id: middleTabButton
		x: tabBar.width / 3

		Image {
			anchors.centerIn: parent
		}
	}

	TabButton {
		id: rightTabButton
		x: tabBar.width * 2 / 3

		Image {
			anchors.centerIn: parent
		}
	}
}
