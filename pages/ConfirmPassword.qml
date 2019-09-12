import QtQuick 2.12
import KelakonUser 0.1

PasswordForm {
	width: stackView.width
	height: stackView.height
	backButton.onClicked: stackView.pop()
	userEmail.y: 292
	instructionLabel.text: qsTr("Re-Enter password")
	emailAddressLabel.text: User.name
	passTextField.placeholderText: qsTr("Re-enter Password")

	createPassButton {
		text: qsTr("Confirm password")
		onClicked: {
			login.logIn(User.name, User.password)
			stackView.push("qrc:/pages/CreateProfile.qml")
		}
	}
}
