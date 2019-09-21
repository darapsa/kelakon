import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
	id: page
	property alias contentLabel: contentLabel

	Label {
		id: contentLabel
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
	}
}
