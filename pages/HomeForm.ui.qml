import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Rectangle {
    id: rectangle

    property alias menuButton: menuButton
    property alias taskList: taskList
    property alias taskList2: taskList2
    property alias taskItem: taskItem
    property alias taskItem2: taskItem2

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

    Rectangle {
        id: taskList
        height: 72
        color: "#ffffff"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: toolbar.bottom
        anchors.topMargin: 8

        GridLayout {
            CheckBox {
                id: taskItem
                text: qsTr("Task name")
                font.weight: Font.Medium
                font.family: "Google Sans"
                font.pointSize: 16
                checked: true
                width: parent.width
                height: parent.height
            }
        }
    }
    Rectangle {
        id: taskList2
        height: 72
        color: "#ffffff"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: taskList.bottom
        anchors.topMargin: 0

        GridLayout {
            CheckBox {
                id: taskItem2
                text: qsTr("Another task name")
                font.weight: Font.Medium
                font.family: "Google Sans"
                font.pointSize: 16
                checked: false
                width: parent.width
                height: parent.height
            }
        }
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:7;anchors_width:534;anchors_x:8;anchors_y:62}
}
 ##^##*/
