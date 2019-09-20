import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import "larva/features"

Page {
	header: ToolBar {
		background: Rectangle {
			color: "#FAFFFFFF"
		}
		RowLayout {
			ToolButton {
				id: toolButton
				icon.name: "back-button"
                icon.source: "assets/arrow-back-24px.svg"
				highlighted: true
				onClicked:
					if (pageView.depth > 1)
						pageView.pop()
					else
						drawer.open()
			}
		}
	}
    footer: RowLayout {
        id: continueLayout
        height: 64
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        Text {
            id: disclaimer
            text: qsTr("By continuing, you are agree to our Terms of Use and Privacy Policy.")
            Layout.rightMargin: 16
            Layout.leftMargin: 16
            font.family: "Roboto"
            font.pointSize: 12
            color: "#FA000000"
            wrapMode: Text.WordWrap
            verticalAlignment: Text.AlignVCenter
            rightPadding: 0
            leftPadding: 0
            Layout.alignment: Qt.AlignVCenter
            Layout.fillWidth: true
        }
        RoundButton {
            id: continueButton
            implicitWidth: 64
            implicitHeight: 64
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Material.background: Material.primary
            display: AbstractButton.IconOnly
            icon.name: "arrow-forward-icon"
            icon.source: "assets/arrow-forward-24px.svg"
            highlighted: true
            enabled: false

        }
    }

	StackView {
		id: contentView
		anchors.fill: parent
        initialItem: LoginEmail{
        }
	}
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
