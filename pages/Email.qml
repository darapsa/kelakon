import QtQuick 2.12
import id.co.darapsa.kelakon.user 0.1

EmailForm {
	width: stackView.width
	height: stackView.height
	property string emailAddress: User.emailAddress

	loginButton {
		onClicked: {
			emailAddress = emailTextField.text
			stackView.push("qrc:/pages/Password.qml")
		}
	}
}
