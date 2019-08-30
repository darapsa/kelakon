import QtQuick 2.12
import id.co.darapsa.kelakon.user 0.1
import id.co.darapsa.kelakon.rtclient 0.1

PasswordForm {
    width: stackView.width
    height: stackView.height
    backButton {
        onClicked: {
            stackView.pop()
        }
    }

    createPassButton {
	    onClicked: {
		    User.password = passTextField.text
		    RTClient.logIn(User.emailAddress, User.password)
	    }
    }
}
