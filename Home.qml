import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import "pages"

Page {
    header: ToolBar {
        background: Rectangle {
            color: "#FAFFFFFF"
        }
        RowLayout {
            anchors.fill: parent
            spacing: 0
            ToolButton {
                id: menuButton
                Layout.rightMargin: 0
                Layout.preferredHeight: -1
                Layout.preferredWidth: -1
                padding: 0
                rightPadding: 0
                leftPadding: 0
                bottomPadding: 0
                topPadding: 0
                icon.name: "menu-button"
                icon.source: "larva/components/icons/menu-24px.svg"
                highlighted: true
                onClicked: {
                        drawer.open()
                }
            }
            Label {
                text: contentView.currentItem.title
                Layout.leftMargin: 16
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                wrapMode: Text.WordWrap
                font.family: "Work Sans"
                font.weight: Font.Medium
                font.pointSize: 20
                color: "#000000"
                Layout.fillWidth: true

            }
        }
    }
    footer: RowLayout {
            RoundButton {
            id: roundButton
            width: 64
            height: 64
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.minimumHeight: 64
            Layout.minimumWidth: 64
            display: AbstractButton.IconOnly
            spacing: 8

            padding: 16
            highlighted: true

            icon.name: "add-icon"
            icon.source: "/assets/add-24px.svg"
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.8
        height: window.height
        visible: false

        Column {
            anchors.fill: parent
            ItemDelegate {
                text: qsTr("Today")
                width: parent.width
                onClicked: {
                    contentView.pop("HomeForm.ui.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text:qsTr("Future")
                width: parent.width
                onClicked: {
                    contentView.push("FutureForm.ui.qml")
                    drawer.close()
                }

            }
        }
    }

    StackView {
        id: contentView
        anchors.fill: parent
        initialItem: HomeForm {}
    }
}


/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
