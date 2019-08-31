import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Rectangle {
    id: rectangle
    color: "#fff"

    property alias enterFullName: enterFullName

    ToolBar {
        id: toolbar
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
            spacing: 8

            ToolButton {
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
            ToolButton {
            }
        }
    }
    Rectangle {
        id: userEmail
        height: 48
        anchors.top: profilePicture.bottom
        anchors.topMargin: 16
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16

        Label {
            id: emailAddressLabel
            anchors.right: parent.right
            anchors.rightMargin: 16
            anchors.left: parent.left
            anchors.leftMargin: 16
            anchors.verticalCenter: parent.verticalCenter

            text: qsTr("your@email.com")
            font.family: "Google Sans"
            font.pointSize: 16
            color: "#99000000"
        }
    }

    TextField {
        id: enterFullName
        anchors.top: userEmail.bottom
        anchors.topMargin: 16
        font.pointSize: 16
        font.family: "Google Sans"
        Layout.fillWidth: true
        placeholderText: qsTr("Full name")
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        Layout.maximumHeight: 56
        echoMode: TextInput.Password
    }

    RoundButton {
        id: startUsingKelakon
        x: 34
        y: 278
        text: qsTr("Start using kelakon")
        font.family: "Google Sans"
        font.capitalization: Font.MixedCase
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 8
        highlighted: true
        Material.background: Material.primary
    }

    Rectangle {
        id: profilePicture
        x: 220
        width: 80
        height: 80
        color: "#f0e6fc"
        radius: 100
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: toolbar.bottom
        anchors.topMargin: 32

        RoundButton {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            flat: true
            display: AbstractButton.IconOnly
            icon.name: "camera-icon"
        }
    }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_width:640}D{i:7;anchors_height:48;anchors_y:143}
D{i:9;anchors_y:322}D{i:11;anchors_y:54}
}
 ##^##*/
