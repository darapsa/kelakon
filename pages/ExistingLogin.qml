import QtQuick 2.12
import id.co.darapsa.kelakon.user 0.1

ExistingLoginForm {
    width: stackView.width
    height: stackView.height
    backButton {
        onClicked: {
            stackView.pop()
        }
    }
}