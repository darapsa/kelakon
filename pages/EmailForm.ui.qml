import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12

Rectangle {
    id: rectangle
    width: 363
    height: 628
    color: "#fff"
    border.width: 0

    property alias emailTextField: emailTextField
    property alias passwordTextField: passwordTextField
    property alias loginButton: loginButton
    Label {
        x: 16
        y: 398
        color: "#2b2626"
        text: qsTr("Continue with E-Mail")
        font.weight: Font.Bold
        wrapMode: Text.WordWrap
        anchors.bottom: buttonLayout.top
        anchors.bottomMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.right: parent.right
        anchors.rightMargin: 88

        font.family: "Google Sans"
        font.pointSize: 34
    }

    RowLayout {
        x: 34
        y: 411
        id: buttonLayout
        width: loginButton.width
        height: loginButton.height
        anchors.bottom: passwordTextField.top
        anchors.bottomMargin: 16
        anchors.horizontalCenter: parent.horizontalCenter

        TextField {
            id: emailTextField
            width: 303
            Layout.fillWidth: true
            placeholderText: "E-mail"
        }
    }

    TextField {
        id: passwordTextField
        x: 34
        y: 468
        width: loginButton.width
        height: loginButton.height
        anchors.bottom: loginButton.top
        anchors.bottomMargin: 16
        anchors.horizontalCenter: parent.horizontalCenter
        echoMode: TextInput.Password
        placeholderText: qsTr("Password")
    }

    Button {
        id: loginButton
        x: 34
        y: 278
        width: 296
        height: 36
        text: qsTr("Masuk")
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16

        contentItem: Text {
            text: loginButton.text
            color: "#FFF"
            font.pointSize: 14
            font.family: "Google Sans"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
            opacity: enabled ? 1.0 : 0.3
            color: loginButton.down ? "#6d22e9" : "#4F12DA"
            radius: 6
        }
    }
}
