import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12

Rectangle {
    id: rectangle
    color: "#fff"
    border.width: 0

    property alias emailTextField: emailTextField
    property alias loginButton: loginButton

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

        Button {
            id: backButton
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 8
            display: AbstractButton.IconOnly
            icon.name: "back-icon"
            icon.source: "/assets/arrow-back-24px.svg"
            icon.color: "transparent"

            background: Rectangle {
                opacity: enabled ? 1.0 : 0.3
                color: backButton.down ? "#ddd" : "#fff"
                radius: 6
            }
        }
    }
    Label {
        x: 16
        y: 398
        color: "#2b2626"
        text: qsTr("Continue with E-Mail")
        font.letterSpacing: 0.25
        lineHeight: 1
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
        text: qsTr("Next")
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
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
