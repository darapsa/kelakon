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
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
