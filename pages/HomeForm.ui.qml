import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Rectangle {
    id: rectangle

    property alias menuButton: menuButton
    property alias toolbar: toolbar

    ToolBar {
        id: toolbar
        z: 8
        height: 56
        font.family: "Google Sans"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        background: Rectangle {
            color: "#FAFFFFFF"
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
                id: profileButton
                icon.name: "profile-icon"
                icon.source: "/assets/profile-24px.svg"
                highlighted: true
            }
        }
    }

    RoundButton {
        id: roundButton
        width: 64
        height: 64
        display: AbstractButton.IconOnly
        spacing: 8

        padding: 16
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        anchors.right: parent.right
        anchors.rightMargin: 8
        highlighted: true

        icon.name: "add-icon"
        icon.source: "/assets/add-24px.svg"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

