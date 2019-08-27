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
    property alias loginButton: loginButton
    Label {
        x: 16
        y: 398
        color: "#2b2626"
        text: qsTr("Continue with E-Mail")
        font.weight: Font.Bold
        wrapMode: Text.WordWrap
        anchors.bottom: emailTextField.top
        anchors.bottomMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.right: parent.right
        anchors.rightMargin: 88

        font.family: "Google Sans"
        font.pointSize: 34
    }

    TextField {
        id: emailTextField
        y: 501
        font.pointSize: 16
        anchors.bottom: loginButton.top
        anchors.bottomMargin: 16
        font.family: "Google Sans"
        Layout.fillWidth: true
        placeholderText: qsTr("E-mail")
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        Layout.maximumHeight: 56

        background: Rectangle {
            color: emailTextField.enabled ? "#f4f4f4" : "#353637"
            anchors.verticalCenter: parent.verticalCenter
            implicitHeight: 56
            radius: 6
        }
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




/*##^## Designer {
    D{i:2;anchors_x:16}
}
 ##^##*/
