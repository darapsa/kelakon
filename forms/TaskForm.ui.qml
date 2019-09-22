import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

GridLayout {
    property alias task: task
    property alias checkBox: checkBox

    id: task
    width: fillWidth
    height: 72
    anchors.right: parent.right
    anchors.rightMargin: 0
    anchors.left: parent.left
    anchors.leftMargin: 0

    Layout.fillWidth: true
    Layout.fillHeight: true

    ItemDelegate {
        id: itemDelegate
        Layout.fillWidth: parent.width
        Layout.fillHeight: parent.height
        GridLayout {

            anchors.fill: parent
            CheckBox {
                Layout.leftMargin: 4
                display: AbstractButton.IconOnly
                font.family: "Google Sans"
                font.pointSize: 16
                font.weight: Font.Medium
            }
            ColumnLayout {
                Layout.leftMargin: 14
                spacing: 0
                Layout.fillWidth: true
                Layout.fillHeight: true
                Label {
                    id: checkBox
                    text: qsTr("Task title")
                    Layout.columnSpan: 0
                    Layout.rowSpan: 0
                    verticalAlignment: Text.AlignVCenter
                    Layout.topMargin: 8
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    font.weight: Font.Medium
                    font.family: "Work Sans"
                    font.pointSize: 16
                    Layout.fillWidth: true
                }
                Label {
                    text: qsTr("Truncated task description")
                    Layout.topMargin: 4
                    Layout.columnSpan: 0
                    Layout.rowSpan: 0
                    verticalAlignment: Text.AlignVCenter
                    Layout.bottomMargin: 8
                    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                    color: "#8a000000"
                    Layout.fillWidth: true
                }
            }
            Image {
                id: chevronRight
                Layout.minimumHeight: 24
                Layout.minimumWidth: 24
                Layout.rightMargin: 12
                opacity: 0.54
                sourceSize.height: 24
                sourceSize.width: 24
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                source: "/assets/chevron-right-24px.svg"
            }
        }
    }
}
