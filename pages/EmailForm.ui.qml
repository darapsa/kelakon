import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12

Rectangle {
    width: 363
    height: 628
    color: "#f44236"
    border.width: 0

    property alias phoneTextField: phoneTextField
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
            id: phoneTextField
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
        y: 525
        width: 296
        height: 57
        text: qsTr("Masuk")
        anchors.bottomMargin: -2
        anchors.bottom: laterButton.top
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: laterButton
        x: 41
        y: 580
        text: qsTr("NANTI SAJA")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 41
    }
}
