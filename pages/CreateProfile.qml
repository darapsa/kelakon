import QtQuick 2.12
import KelakonUser 0.1

CreateProfileForm {
	width: stackView.width
	height: stackView.height
	backButton.onClicked: stackView.pop()
	skipButton.onClicked: {
		login.search(User.name)
		stackView.push("qrc:/pages/Home.qml")
	}
	emailAddressLabel.text: User.emailAddress
	enterFullName.text: User.realName
}
