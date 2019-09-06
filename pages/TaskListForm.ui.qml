import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.3

ListView {
<<<<<<< HEAD
    width: 362
    spacing: 12
    property alias menuButton: menuButton

    Rectangle {
        id: rectangle
        anchors.fill: parent
        z: -1

        ToolBar {
            id: toolbar
            height: 56
            font.family: "Google Sans"
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            background: Rectangle {
                color: "#FFF"
            }

            RowLayout {
                anchors.fill: parent
                spacing: 8

                ToolButton {
                    id: menuButton
                    icon.name: "menu-icon"
                    icon.source: "/assets/menu-24px.svg"
                    highlighted: true
                }
                Label {
                    id: title
                    text: qsTr("Today")
                    font.weight: Font.Medium
                    wrapMode: Text.WordWrap
                    color: "#000000"
                    font.family: "Google Sans"
                    font.pointSize: 20
                    elide: Label.ElideRight
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Qt.AlignVCenter
                    Layout.fillWidth: true
                }
                ToolButton {
                }
            }
        }

        RoundButton {
            id: roundButton
            width: 144
            spacing: 8
            height: 64

            text: qsTr("New task")
            padding: 16
            font.capitalization: Font.MixedCase
            font.family: "Google Sans"
            font.pointSize: 16
            font.weight: Font.Medium

            rightPadding: 24
            leftPadding: 16
            bottomPadding: 16
            topPadding: 16
            autoExclusive: false
            focusPolicy: Qt.NoFocus
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 16
            anchors.right: parent.right
            anchors.rightMargin: 16
            highlighted: true

            icon.name: "add-icon"
            icon.source: "/assets/add-24px.svg"
        }
    }
=======
	width: 362
	spacing: 12

	Rectangle {
		id: rectangle
		anchors.fill: parent
		z: -1
	}
>>>>>>> 7331461b29097c08fcdd557461aedb78cfe243d1
}
