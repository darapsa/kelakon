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

	instructionLabel.text: qsTr("Create password")
	emailAddressLabel.text: User.emailAddress
	passTextField.placeholderText: qsTr("Password")

	createPassButton {
		text: qsTr("Next")
		onClicked: {
			User.password = passTextField.text
			stackView.push("qrc:/pages/ConfirmPassword.qml")
		}
	}
}
