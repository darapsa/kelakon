import QtQuick 2.15
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
			contentView.push("LoginPassword.qml", {
				"name": emailTextField.text
			})
		}
	}
}
