import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Rectangle {
    id: rectangle

    property alias menuButton: menuButton
    property alias taskList: taskList
    property alias chevronRight: chevronRight
    property alias checkBox: checkBox

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
        anchors.top: toolbar.bottom
        anchors.topMargin: 8
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        spacing: 8

        CheckBox {
            id: checkBox
            height: 54
            text: qsTr("This is a task title")
            rightPadding: 16
            leftPadding: 16
            bottomPadding: 16
            topPadding: 16
            Layout.fillWidth: true
            font.family: "Google Sans"
            font.pointSize: 16
            font.weight: Font.Medium
            spacing: 16
        }
        RoundButton {
            id: chevronRight
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
