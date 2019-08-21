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

    Label {
        text: qsTr("kelakon")
        font.family: "Google Sans"
        font.pointSize: 24
        color: "#000000"

        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top
        anchors.topMargin: 16
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

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
        text: qsTr("Button")
        y: 419
        height: 36

        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.bottomMargin: 16
        anchors.bottom: emailButton.top

        contentItem: Text {
            color: "#FFF"
            font: control.font
            text: "Continue with Google"
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
        text: qsTr("Button")
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
            color: "#6d22e9"
            font: control.font
            text: "Continue with E-Mail"
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
}




/*##^## Designer {
    D{i:1;anchors_x:124;anchors_y:158}
}
 ##^##*/
