import QtQuick 2.12
import KelakonUser 0.1
import "larva/features"

LoginEmailForm {
	emailTextField.onTextChanged: {
		if (!emailTextField.text || !continueButton.enabled)
			continueButton.enabled = !continueButton.enabled
	}

	continueButton {
		icon.source: "assets/arrow-forward-24px.svg"
		onClicked: {
			User.name = emailTextField.text
			contentView.push("LoginPassword.qml")
		}
	}
}
