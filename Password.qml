import QtQuick 2.12
import KelakonUser 0.1
import "pages"

PasswordForm {
	backButton {
        icon.source: "assets/arrow-back-24px.svg"
		onClicked: pageView.pop()
	}

    passImage.source: "assets/lock-24px.svg"
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
