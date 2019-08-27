import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    id: appWindow
    width: 362
    height: 628
    visible: true

    StackView {
        id: stackView
	anchors.fill : parent

        initialItem: Login {}
    }

}
