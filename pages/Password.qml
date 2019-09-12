import QtQuick 2.12
import KelakonUser 0.1

PasswordForm {
	width: stackView.width
	height: stackView.height
	backButton.onClicked: stackView.pop()
	emailAddressLabel.text: User.name

	passTextField.onTextChanged: {
		if (!passTextField.text || !createPassButton.enabled)
			createPassButton.enabled = !createPassButton.enabled
	}

	createPassButton.onClicked: {
		User.password = passTextField.text
		stackView.push("qrc:/pages/ConfirmPassword.qml")
	}
}
