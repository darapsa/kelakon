import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Rectangle {
    id: rectangle
    color: "#fff"
    border.width: 0

    property alias backButton: backButton
    property alias emailTextField: emailTextField
    property alias loginButton: loginButton

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
        background: Rectangle {
            color: "#FFF"
        }

        RowLayout {
            anchors.fill: parent
            spacing: 8

            ToolButton {
                id: backButton
                icon.name: "back-icon"
                icon.source: "/assets/arrow-back-24px.svg"
                highlighted: true
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
    }

    RoundButton {
        id: loginButton
        text: qsTr("Next")
        enabled: false
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
