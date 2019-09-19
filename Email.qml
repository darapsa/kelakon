import QtQuick 2.12
import KelakonUser 0.1
import "pages"

EmailForm {
	backButton {
		icon.source: "larva/components/icons/arrow-back-24px.svg"
		onClicked: pageView.pop()
	}

	emailImage.source: "larva/components/icons/email-24px.svg"

	emailTextField.onTextChanged: {
		if (!emailTextField.text || !loginButton.enabled)
			loginButton.enabled = !loginButton.enabled
	}

	loginButton.onClicked: {
		User.emailAddress = emailTextField.text
		pageView.push("Password.qml")
	}
}
