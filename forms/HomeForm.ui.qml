import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Page {
	property alias menuButton: menuButton
	property alias titleLabel: titleLabel
	property alias profileButton: profileButton
	property alias roundButton: roundButton
	property alias contentView: contentView

	header: ToolBar {
		background: Rectangle {
			color: "#FAFFFFFF"
		}
		RowLayout {
			anchors.fill: parent
			spacing: 0
			ToolButton {
				id: menuButton
				icon.name: "menu-button"
				highlighted: true
			}
			Label {
				id: titleLabel
				Layout.leftMargin: 16
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				wrapMode: Text.WordWrap
				font.family: "Work Sans"
				font.weight: Font.Medium
				font.pointSize: 20
				color: "#000000"
				Layout.fillWidth: true
			}
			ToolButton {
				id: profileButton
				icon.name: "profile-button"
				highlighted: true
			}
		}
	}
	footer: RowLayout {
		RoundButton {
			id: roundButton
			width: 64
			height: 64
			Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
			Layout.minimumHeight: 64
			Layout.minimumWidth: 64
			display: AbstractButton.IconOnly
			spacing: 8
			padding: 16
			highlighted: true
			icon.name: "add-icon"
		}
	}

	StackView {
		id: contentView
		anchors.fill: parent
		initialItem: Page {
			id: page
			title: qsTr("Today")

			Label {
				text: qsTr("Load `contentView` here")
				anchors.verticalCenter: parent.verticalCenter
				anchors.horizontalCenter: parent.horizontalCenter
			}
		}
	}
}
