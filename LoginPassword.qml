import QtQuick 2.12
import KelakonUser 0.1
import "larva/features"

LoginPasswordForm {
	emailTextLabel.text: User.name

	passwordTextField.onTextChanged: {
		if (!passwordTextField.text || !continueButton.enabled)
			continueButton.enabled = !continueButton.enabled
	}

	continueButton {
		icon.source: "assets/arrow-forward-24px.svg"
		onClicked: {
			User.password = passwordTextField.text
			onClicked: {
				onboarding.logIn(User.name, User.password)
				onboarding.ticketSearch(User.name)
			}
		}
	}
}
