import QtQuick 2.12
import KelakonUser 0.1

PasswordForm {
	width: stackView.width
	height: stackView.height
	backButton.onClicked: stackView.pop()
	instructionLabel.text: qsTr("Enter password")
	emailAddressLabel.text: User.name

	passTextField.onTextChanged: {
		if (!passTextField.text || !createPassButton.enabled)
			createPassButton.enabled = !createPassButton.enabled
	}

	createPassButton.onClicked: {
		User.password = passTextField.text
		onClicked: login.logIn(User.name, User.password)
	}
}
