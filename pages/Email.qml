import QtQuick 2.12
import KelakonUser 0.1

EmailForm {
	width: stackView.width
	height: stackView.height
	backButton.onClicked: stackView.pop()

	emailTextField.onTextChanged: {
		if (!emailTextField.text)
			loginButton.enabled = false
		else if (!loginButton.enabled)
			loginButton.enabled = true
	}

	loginButton.onClicked: {
		User.name = emailTextField.text
		stackView.push("qrc:/pages/Password.qml")
	}
}
