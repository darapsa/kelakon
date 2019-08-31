import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Rectangle {
    id: rectangle
    width: 360
    height: 640
    color: "#ffffff"
    property alias googleButton: googleButton
    property alias emailButton: emailButton

    RoundButton {
        id: googleButton
        text: qsTr("Continue with Google")
        font.family: "Google Sans"
        font.capitalization: Font.MixedCase
        anchors.bottom: emailButton.top
        anchors.bottomMargin: 8
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 8
        Layout.fillWidth: true
        highlighted: true
        Material.background: Material.primary
    }

    RoundButton {
        id: emailButton
        text: qsTr("Continue with E-Mail")
        flat: true
        font.family: "Google Sans"
        font.capitalization: Font.MixedCase
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.bottom: disclaimer.top
        anchors.bottomMargin: 8
        Layout.fillWidth: true
        Material.foreground: Material.primary
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
        anchors.topMargin: 48
        anchors.right: parent.right
        anchors.rightMargin: 56
        anchors.left: parent.left
        anchors.leftMargin: 56
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
    D{i:5;anchors_height:258;anchors_width:258;anchors_x:51;anchors_y:80}
}
 ##^##*/
