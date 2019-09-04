import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Rectangle {
    id: rectangle

    property alias menuButton: menuButton
    property alias taskList: taskList

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

    RowLayout {
        id: taskList
        height: 72
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: toolbar.bottom
        anchors.topMargin: 8

        RoundButton {
            id: checkBox
            flat: true
            icon.name: "check-box-icon"
            icon.source: "/assets/check-box-outline-24px.svg"
            icon.color: "#99000000"
        }
        Label {
            id: taskLabel
            text: qsTr("Task number 1")
            font.weight: Font.Medium
            font.pointSize: 16
            Layout.fillWidth: true
            font.family: "Google Sans"
        }
        RoundButton {
            id: taskDetailNavigate
            flat: true
            icon.name: "chevron-right-icon"
            icon.source: "/assets/chevron-right-24px.svg"
            icon.color: "#99000000"
        }
    }
}








/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
