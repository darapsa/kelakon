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

    RowLayout {
        x: 34
        y: 419
        width: googleButton.width
        height: googleButton.height
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: googleButton
        text: qsTr("Continue with Button")
        y: 419
        height: 36

        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.bottomMargin: 16
        anchors.bottom: emailButton.top

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
            color: "#6d22e9"
            radius: 6
        }
    }

    Button {
        id: emailButton
        text: qsTr("Continue with E-Mail")
        x: 41
        y: 516
        height: 36
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.bottom: disclaimer.top
        anchors.bottomMargin: 16
        anchors.right: parent.right
        anchors.rightMargin: 16

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
            color: "#fff"
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
}




/*##^## Designer {
    D{i:9;anchors_width:100;anchors_x:139;anchors_y:93}
}
 ##^##*/
