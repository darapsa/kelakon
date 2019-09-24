import QtQuick 2.12
import KelakonUser 0.1
import "larva/features"

EmailForm {
	backButton.onClicked: pageView.pop()

	emailTextField.onTextChanged: {
		if (!emailTextField.text || !loginButton.enabled)
			loginButton.enabled = !loginButton.enabled
	}

	loginButton.onClicked: {
		User.emailAddress = emailTextField.text
		pageView.push("Password.qml")
	}
}
