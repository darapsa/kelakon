import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Page {
	id: page
	property alias listView: listView

	ListView {
		id: listView
		width: 362
		height: parent.height
		anchors.topMargin: 8
		anchors.right: parent.right
		anchors.rightMargin: 0
		anchors.left: parent.left
		anchors.leftMargin: 0
		spacing: 12

		Rectangle {
			id: rectangle
			anchors.fill: parent
			z: -1
		}

		ScrollBar.vertical: ScrollBar {}
	}
}
