import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12

Rectangle {
    id: rectangle
    width: 360
    height: 640
    color: "#ffffff"
    property alias googleButton: googleButton
    property alias emailButton: emailButton

    Button {
        id: googleButton
        text: qsTr("Continue with Google")
        anchors.bottom: emailButton.top
        anchors.bottomMargin: 16
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        height: 36
        Layout.fillWidth: true

        contentItem: Text {
            text: googleButton.text
            color: "#FFF"
            font.pointSize: 14
            font.family: "Google Sans"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
        background: Rectangle {
            opacity: enabled ? 1.0 : 0.3
            color: googleButton.down ? "#6d22e9" : "#4F12DA"
            radius: 6
        }
    }

    Button {
        id: emailButton
        text: qsTr("Continue with E-Mail")
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.bottom: disclaimer.top
        anchors.bottomMargin: 16
        height: 36
        Layout.fillWidth: true

        contentItem: Text {
            text: emailButton.text
            color: "#6d22e9"
            font.pointSize: 14
            font.family: "Google Sans"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
        background: Rectangle {
            opacity: enabled ? 0.3 : 1
            color: emailButton.down ? "#6d22e9" : "#ffffff"
            border.color: "#6d22e9"
            border.width: 1
            radius: 6
        }
    }

    Text {
        id: disclaimer
        y: 597
        height: 32
        color: "#99000000"
        text: qsTr("By creating an account you agree to our Terms of Use and Privacy Policy.")
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 16
        font.family: "Google Sans"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WordWrap
        font.pixelSize: 12
    }

    Image {
        id: logotext
        x: 139
        width: 100
        height: 24
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 16
        fillMode: Image.PreserveAspectFit
        source: "kelakon-logo.png"
    }

    Image {
        id: image
        anchors.top: logotext.bottom
        anchors.topMargin: 56
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.bottom: onboarding_text_1.top
        anchors.bottomMargin: 16
        source: "onboarding-1.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: onboarding_text_1
        text: qsTr("Achieve more today, chill tomorrow.")
        anchors.bottom: googleButton.top
        anchors.bottomMargin: 16
        wrapMode: Text.WordWrap
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        font.pointSize: 24
        font.family: "Google Sans"
        font.weight: Font.Medium
    }
}










/*##^## Designer {
    D{i:8;anchors_width:100;anchors_x:130;anchors_y:69}D{i:9;anchors_height:258;anchors_width:258;anchors_x:51;anchors_y:80}
}
 ##^##*/
