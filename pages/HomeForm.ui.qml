import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Rectangle {

    property alias backButton: menuButton

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
        background: rectangle

        RowLayout {
            anchors.fill: parent
            spacing: 8

            ToolButton {
                id: menuButton
                icon.name: "back-icon"
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
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
