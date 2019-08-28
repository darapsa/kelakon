import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12

Rectangle {
    id: rectangle
    width: 363
    height: 628
    color: "#fff"
    border.width: 0

    property alias passTextField: passTextField
    property alias createPassButton: createPassButton

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

        Rectangle {
            id: navIconBg
            width: 24
            height: 24
            anchors.left: parent.left
            anchors.leftMargin: 16
            anchors.verticalCenter: parent.verticalCenter

            Button {
                id: backButton
                display: AbstractButton.IconOnly
                anchors.fill: parent
            }
        }
    }

    Label {
        x: 16
        y: 398
        color: "#2b2626"
        text: qsTr("Create password")
        font.letterSpacing: 0.25
        lineHeight: 1
        font.weight: Font.Bold
        wrapMode: Text.WordWrap
        anchors.bottom: passTextField.top
        anchors.bottomMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.right: parent.right
        anchors.rightMargin: 88

        font.family: "Google Sans"
        font.pointSize: 34
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

        background: Rectangle {
            color: passTextField.enabled ? "#f4f4f4" : "#353637"
            anchors.verticalCenter: parent.verticalCenter
            implicitHeight: 56
            radius: 6
        }
    }

    Button {
        id: createPassButton
        x: 34
        y: 278
        width: 296
        height: 36
        text: qsTr("Confirm password")
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16

        contentItem: Text {
            text: createPassButton.text
            color: "#FFF"
            font.pointSize: 14
            font.family: "Google Sans"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
            opacity: enabled ? 1.0 : 0.3
            color: createPassButton.down ? "#6d22e9" : "#4F12DA"
            radius: 6
        }
    }
}
