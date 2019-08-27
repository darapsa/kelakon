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
    property alias laterButton: laterButton

    Label {
        x: 124
        y: 177
        width: 116
        height: 17
        text: qsTr("E-mail")
        anchors.horizontalCenter: parent.horizontalCenter
    }

    RowLayout {
        x: 34
        y: 411
        width: loginButton.width
        height: loginButton.height
        anchors.bottom: passwordTextField.top
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: prefixLabel
            text: "+62"
        }

        TextField {
            id: emailTextField
            width: 303
            Layout.fillWidth: true
            placeholderText: "812345678"
        }
    }

    TextField {
        id: passwordTextField
        x: 34
        y: 468
        width: loginButton.width
        height: loginButton.height
        anchors.bottom: loginButton.top
        anchors.horizontalCenter: parent.horizontalCenter
        echoMode: TextInput.Password
        placeholderText: qsTr("Kata Sandi")
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
        anchors.bottom: laterButton.top
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
            color: laterButton.down ? "#6d22e9" : "#4F12DA"
            radius: 6
        }
    }

    Button {
        id: laterButton
        x: 16
        y: 566
        height: 36
        text: qsTr("Nanti saja")
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16

        contentItem: Text {
            text: laterButton.text
            color: "#6d22e9"
            font.pointSize: 14
            font.family: "Google Sans"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
        background: Rectangle {
            opacity: enabled ? 0.3 : 1.0
            color: laterButton.down ? "#6d22e9" : "#fff"
            border.color: "#6d22e9"
            border.width: 1
            radius: 6
        }
    }
}
