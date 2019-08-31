import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Rectangle {
    id: rectangle
    color: "#fff"
    border.width: 0

    property alias backButton: backButton
    property alias passTextField: passTextField
    property alias createPassButton: loginButton

    Rectangle {
        id: appBar
        height: 56
        color: "#ffffff"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        RoundButton {
            id: backButton
            flat: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            display: AbstractButton.IconOnly
            icon.name: "back-icon"
            icon.source: "/assets/arrow-back-24px.svg"
            icon.color: "transparent"
        }
    }

    Label {
        x: 16
        y: 232
        color: "#2b2626"
        text: qsTr("Welcome Back!")
        anchors.bottom: userEmail.top
        anchors.bottomMargin: 16
        font.letterSpacing: 0.25
        lineHeight: 1
        font.weight: Font.Bold
        wrapMode: Text.WordWrap
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.right: parent.right
        anchors.rightMargin: 88

        font.family: "Google Sans"
        font.pointSize: 34
    }

    Rectangle {
        id: userEmail
        height: 48
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.bottom: passTextField.top
        anchors.bottomMargin: 16

        Label {
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
        id: passTextField
        y: 501
        font.pointSize: 16
        anchors.bottom: createPassButton.top
        anchors.bottomMargin: 16
        font.family: "Google Sans"
        Layout.fillWidth: true
        placeholderText: qsTr("Password")
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        Layout.maximumHeight: 56
        echoMode: TextInput.Password
    }

    RoundButton {
        id: loginButton
        x: 34
        y: 278
        text: qsTr("Login")
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
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
