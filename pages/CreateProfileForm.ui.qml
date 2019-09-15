import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Rectangle {
    id: rectangle
    color: "#fff"

    property alias backButton: backButton
    property alias skipButton: skipButton
    property alias emailAddressLabel: emailAddressLabel
    property alias enterFullName: enterFullName

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
            color: "#fff"
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
            Label {
                id: title
                text: qsTr("Create Profile")
                font.weight: Font.Medium
                wrapMode: Text.WordWrap
                color: "#000"
                font.family: "Google Sans"
                font.pointSize: 20
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
            ToolButton {
                id: skipButton
                text: qsTr("Skip")
                font.weight: Font.Medium
                display: AbstractButton.TextOnly
                font.family: "Google Sans"
                font.pointSize: 14
                font.capitalization: Font.MixedCase
                highlighted: true
            }
        }
    }
    RowLayout {
        id: userEmail
        height: 56
        anchors.top: usernameRowLayout.bottom
        anchors.topMargin: 16
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        spacing: 8

        Image {
            width: 24
            height: 24
            Layout.leftMargin: 0
            Layout.alignment: Qt.AlignVCenter
            fillMode: Image.PreserveAspectFit
            source: "../assets/email-24px.svg"
            antialiasing: true
        }

        Label {
            id: emailAddressLabel
            Layout.fillWidth: true
            text: qsTr("your@email.com")
            Layout.leftMargin: 24
            verticalAlignment: Text.AlignVCenter
            font.family: "Google Sans"
            font.pointSize: 16
            color: "#99000000"
        }
    }
    RowLayout {
        id: fullnameRowLayout
        height: 56
        anchors.top: profilePicture.bottom
        anchors.topMargin: 32
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16

        Image {
            width: 24
            height: 24
            Layout.leftMargin: 0
            Layout.alignment: Qt.AlignVCenter
            fillMode: Image.PreserveAspectFit
            source: "../assets/profile-24px.svg"
            antialiasing: true
        }

        TextField {
            id: enterFullName
            Layout.leftMargin: 24
            font.pointSize: 16
            font.family: "Google Sans"
            Layout.fillWidth: true
            placeholderText: qsTr("Full name")
            Layout.alignment: Qt.AlignVCenter
        }
    }
    RowLayout {
        id: usernameRowLayout
        height: 56
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.top: fullnameRowLayout.bottom
        anchors.topMargin: 16

        Image {
            width: 24
            height: 24
            Layout.leftMargin: 0
            Layout.alignment: Qt.AlignVCenter
            fillMode: Image.PreserveAspectFit
            source: "../assets/user-24px.svg"
            antialiasing: true
        }

        TextField {
            Layout.leftMargin: 24
            font.pointSize: 16
            font.family: "Google Sans"
            Layout.fillWidth: true
            placeholderText: qsTr("Username")
            Layout.alignment: Qt.AlignVCenter
        }
    }

    RoundButton {
        id: startUsingKelakon
        x: 34
        y: 278
        text: qsTr("Start using kelakon")
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

    Rectangle {
        id: profilePicture
        x: 220
        width: 80
        height: 80
        color: "#f0e6fc"
        radius: 100
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: toolbar.bottom
        anchors.topMargin: 32

        RoundButton {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            flat: true
            display: AbstractButton.IconOnly
            icon.name: "camera-icon"
            icon.source: "/assets/photo_camera_24px.svg"
            icon.color: "#6D22E9"
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_width:640}
}
##^##*/

