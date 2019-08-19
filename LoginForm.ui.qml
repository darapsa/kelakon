import QtQuick 2.12
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.12

Rectangle {
    width: 363
    height: 628
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
        x: 31
        y: 419
        width: 296
        height: 50
        text: qsTr("Continue with Google")
        spacing: 4
        anchors.bottomMargin: 31
        anchors.bottom: emailButton.top
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: emailButton
        x: 41
        y: 493
        width: 296
        height: 50
        text: qsTr("Continue with E-mail")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 80
        anchors.left: parent.left
        anchors.leftMargin: 34
    }
}
