import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.12

Rectangle {
    id: rectangle
    width: 360
    height: 640
    color: "#ffffff"
    property alias emailButton: emailButton
    property alias googleButton: googleButton
    border.width: 0

    Label {
        x: 124
        y: 158
        width: 74
        height: 28
        text: qsTr("kelakon")
        font.pointSize: 16
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
        y: 419
        height: 36
        text: qsTr("Continue with Google")
        font.weight: Font.Medium
        padding: 8
        bottomPadding: 8
        topPadding: 8
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        font.pointSize: 14
        display: AbstractButton.TextBesideIcon
        spacing: 4
        anchors.bottomMargin: 16
        anchors.bottom: emailButton.top
    }

    Button {
        id: emailButton
        x: 41
        y: 516
        height: 36
        text: qsTr("Continue with E-mail")
        flat: false
        font.weight: Font.Medium
        font.bold: false
        font.family: "Arial"
        padding: 8
        anchors.bottomMargin: 16
        anchors.right: parent.right
        anchors.rightMargin: 16
        font.pointSize: 14
        anchors.left: parent.left
        anchors.leftMargin: 16
    }

    Text {
        id: element
        x: 16
        y: 597
        width: 328
        height: 32
        color: "#99000000"
        text: qsTr("By creating an account you agree to our Terms of Use and Privacy Policy.")
        font.family: "Arial"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WordWrap
        font.pixelSize: 12
    }
}

/*##^## Designer {
    D{i:1;anchors_x:124;anchors_y:158}D{i:5;anchors_height:32;anchors_width:328;anchors_x:16;anchors_y:597}
}
 ##^##*/
