import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Rectangle {
    id: rectangle
    color: "#fff"

    property alias backButton: backButton

    ToolBar {
        height: 48
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        background: rectangle

        Rectangle {
            color: "#fff"
        }

        RowLayout {
            anchors.fill: parent

            ToolButton {
		    id: backButton
                icon.name: "back-icon"
                icon.source: "/assets/arrow-back-24px.svg"
                icon.color: "transparent"
            }
            Label {
                id: title
                text: qsTr("Create Profile")
                font.family: "Google Sans"
                font.pointSize: 20
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
        }
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_width:640}
}
 ##^##*/
