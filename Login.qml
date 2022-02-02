import QtQuick 2.15
import KelakonUser 0.1
import "larva/features"

LoginForm {
	toolButton.onClicked:
				if (pageView.depth > 1)
					pageView.pop()
				else
					drawer.open()

	contentView.initialItem: LoginEmailForm {
		emailTextField.onTextChanged: {
			if (!emailTextField.text || !continueButton.enabled)
				continueButton.enabled = !continueButton.enabled
		}

		continueButton.onClicked: {
			User.name = emailTextField.text
			contentView.push("LoginPassword.qml")
		}
	}
}
