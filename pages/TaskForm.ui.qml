import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

RowLayout {
    property alias task: task
    property alias checkBox: checkBox

    id: task
    width: fillWidth
    height: 54
    anchors.topMargin: 8
    anchors.right: parent.right
    anchors.rightMargin: 0
    anchors.left: parent.left
    anchors.leftMargin: 0
    spacing: 8

    CheckBox {
        id: checkBox
        text: qsTr("This is a task title")
        padding: 8
        rightPadding: 16
        leftPadding: 16
        bottomPadding: 16
        topPadding: 16
        Layout.fillHeight: true
        Layout.fillWidth: true
        font.family: "Google Sans"
        font.pointSize: 16
        font.weight: Font.Medium
        spacing: 24
    }
    RoundButton {
        id: chevronRight
        flat: true
        icon.name: "chevron-right-icon"
        icon.source: "/assets/chevron-right-24px.svg"
        icon.color: "#99000000"
    }
}
