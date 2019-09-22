import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import "larva/features"

Page {
    header: ToolBar{
        background: Rectangle {
            color: "#FAFFFFFF"
        }
        RowLayout {
            anchors.fill: parent
            spacing: 0
            ToolButton {
                id: backButton
                icon.name: "back-button"
                icon.source: "assets/arrow-back-24px.svg"
                highlighted: true
                onClicked: {
                        pageView.pop()
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
            ToolButton {
                text: qsTr("Edit")
                font.weight: Font.Medium
                display: AbstractButton.TextOnly
                font.family: "Work Sans"
                font.capitalization: Font.MixedCase
                flat: false
                highlighted: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                onClicked: pageView.push("/larva/features/ProfileEditForm.ui.qml")

            }
        }
    }
    StackView {
        id: contentView
        anchors.fill: parent
        initialItem: ProfileForm {}
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
