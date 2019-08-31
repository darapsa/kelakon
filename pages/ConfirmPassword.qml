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

	emailAddressLabel.text: User.emailAddress

	confirmPassButton {
		onClicked: {
			RTClient.logIn(User.emailAddress, User.password)
			stackView.push("qrc:/pages/CreateProfile.qml")
		}
	}
}
