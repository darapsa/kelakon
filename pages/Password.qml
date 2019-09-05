import QtQuick 2.12
import id.co.darapsa.kelakon.user 0.1

PasswordForm {
	width: stackView.width
	height: stackView.height
	backButton {
		onClicked: {
			stackView.pop()
		}
	}

	emailAddressLabel.text: User.emailAddress

	createPassButton {
		onClicked: {
			User.password = passTextField.text
			stackView.push("qrc:/pages/ConfirmPassword.qml")
		}
	}
}
