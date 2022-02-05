import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
	property alias leftTabButton: leftTabButton
	property alias middleTabButton: middleTabButton
	property alias rightTabButton: rightTabButton

	color: "#fcfcfc"
	width: 360
	height: 80

	FontLoader {
		id: robotoMono
		source: "fonts/RobotoMono-Regular.ttf"
	}

	TabBar {
		anchors.fill: parent

		TabButton {
			id: leftTabButton
			height: parent.height
			anchors.verticalCenter: parent.verticalCenter

			Image {
				source: "circle.png"
				anchors.horizontalCenter: parent.horizontalCenter
				anchors.top: parent.top
				anchors.topMargin: 22
			}

			Text {
				text: qsTr("Today")
				anchors.horizontalCenter: parent.horizontalCenter
				anchors.bottom: parent.bottom
				anchors.bottomMargin: 16
				font.family: robotoMono.name
			}
		}

		TabButton {
			id: middleTabButton
			height: parent.height
			anchors.verticalCenter: parent.verticalCenter

			Image {
				source: "triangle.png"
				anchors.horizontalCenter: parent.horizontalCenter
				anchors.top: parent.top
				anchors.topMargin: 22
			}

			Text {
				text: qsTr("Projects")
				anchors.horizontalCenter: parent.horizontalCenter
				anchors.bottom: parent.bottom
				anchors.bottomMargin: 16
				font.family: robotoMono.name
			}
		}

		TabButton {
			id: rightTabButton
			height: parent.height
			anchors.verticalCenter: parent.verticalCenter

			Image {
				source: "square.png"
				anchors.horizontalCenter: parent.horizontalCenter
				anchors.top: parent.top
				anchors.topMargin: 22
			}

			Text {
				text: qsTr("Label")
				anchors.horizontalCenter: parent.horizontalCenter
				anchors.bottom: parent.bottom
				anchors.bottomMargin: 16
				font.family: robotoMono.name
			}
		}
	}
}
