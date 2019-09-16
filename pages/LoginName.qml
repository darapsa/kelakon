import QtQuick 2.12
import KelakonUser 0.1

EmailForm {
	width: stackView.width
	height: stackView.height
	backButton.onClicked: stackView.pop()
    instructionLabel.text: qsTr("Log in")

	emailTextField.onTextChanged: {
		if (!emailTextField.text || !loginButton.enabled)
			loginButton.enabled = !loginButton.enabled
	}

	loginButton.onClicked: {
		User.name = emailTextField.text
		stackView.push("qrc:/pages/LoginPass.qml")
	}
}
