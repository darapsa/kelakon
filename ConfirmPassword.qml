import QtQuick 2.12
import KelakonUser 0.1
import "pages"

PasswordForm {
	backButton {
		icon.source: "larva/components/icons/arrow-back-24px.svg"
		onClicked: pageView.pop()
	}

	userEmail.y: 292
	passImage.source: "larva/components/icons/lock-24px.svg"
	instructionLabel.text: qsTr("Re-Enter password")
	emailAddressLabel.text: User.name

	passTextField {
		placeholderText: qsTr("Re-enter Password")
		onTextChanged:
			if (passTextField.text == User.password)
				createPassButton.enabled = true
	}

	createPassButton {
		enabled: false
		text: qsTr("Confirm password")
		onClicked: pageView.push("CreateProfile.qml")
	}
}
