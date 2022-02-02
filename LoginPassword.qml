import QtQuick 2.15
import "larva/features"

LoginPasswordForm {
	property string name

	emailTextLabel.text: name
	passwordTextField.onTextChanged:
		if (!passwordTextField.text || !continueButton.enabled)
			continueButton.enabled = !continueButton.enabled

	continueButton.onClicked: window.logIn(name, passwordTextField.text)
}
