import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import "larva/features"

ApplicationWindow {
    id: window
    visible: true
    width: 360
    height: 640
    title: {
        text: qsTr("kelakon")
    }


    StackView {
        id: pageView
        anchors.fill: parent

        initialItem: Onboarding {}
        }
}
