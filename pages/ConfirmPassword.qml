import QtQuick 2.12
import id.co.darapsa.kelakon.user 0.1
import id.co.darapsa.kelakon.rtclient 0.1

PasswordForm {
	width: stackView.width
	height: stackView.height

	backButton {
		onClicked: {
			stackView.pop()
		}
	}

	userEmail.y: 292
	instructionLabel.text: qsTr("Re-Enter password")
	emailAddressLabel.text: User.emailAddress
	passTextField.placeholderText: qsTr("Re-enter Password")

	createPassButton {
		text: qsTr("Confirm password")
		onClicked: {
			RTClient.logIn(User.emailAddress, User.password)
			stackView.push("qrc:/pages/CreateProfile.qml")
		}
	}
}
