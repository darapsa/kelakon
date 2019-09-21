import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Page {
	property alias contentLabel: contentLabel

	Label {
		id: contentLabel
		anchors.centerIn: parent
	}
}
