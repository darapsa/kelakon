import QtQuick 2.12
import KelakonUser 0.1
import "larva/features"

PasswordForm {
	backButton.onClicked: pageView.pop()
	userEmail.y: 292
	instructionLabel.text: qsTr("Re-Enter password")
	emailAddressLabel.text: User.emailAddress

	passTextField {
		placeholderText: qsTr("Re-enter Password")
		onTextChanged:
			if (passTextField.text == User.password)
				createPassButton.enabled = true
			else
				createPassButton.enabled = false
	}

	createPassButton {
		enabled: false
		text: qsTr("Confirm password")
		onClicked: pageView.push("CreateProfile.qml")
	}
}
