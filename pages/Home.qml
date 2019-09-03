import QtQuick 2.12
import id.co.darapsa.kelakon.user 0.1

HomeForm {
    width: stackView.width
    height: stackView.height

    menuButton {
        onClicked: {
            drawer.visible = !drawer.visible
        }
    }
}
