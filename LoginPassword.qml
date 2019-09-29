import QtQuick 2.12
import KelakonUser 0.1
import "larva/features"

LoginPasswordForm {
	objectName: "login"
	function pushHome() {
		pageView.push("Home.qml")
	}

	emailTextLabel.text: User.name
	passwordTextField.onTextChanged:
		if (!passwordTextField.text || !continueButton.enabled)
			continueButton.enabled = !continueButton.enabled

	continueButton.onClicked: {
			User.password = passwordTextField.text
			window.logIn(User.name, User.password)
		}
}
