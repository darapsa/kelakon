import QtQuick 2.12
import KelakonUser 0.1
import "larva/features"

PasswordForm {
	backButton.onClicked: pageView.pop()
	emailAddressLabel.text: User.name

	passTextField.onTextChanged: {
		if (!passTextField.text || !createPassButton.enabled)
			createPassButton.enabled = !createPassButton.enabled
	}

	createPassButton.onClicked: {
		User.password = passTextField.text
		pageView.push("ConfirmPassword.qml")
	}
}
