import QtQuick 2.12
import id.co.darapsa.kelakon.user 0.1
import id.co.darapsa.kelakon.rtclient 0.1

ConfirmPasswordForm {
    width: stackView.width
    height: stackView.height
    backButton {
        onClicked: {
            stackView.pop()
        }
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/