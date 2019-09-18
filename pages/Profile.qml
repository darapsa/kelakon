import QtQuick 2.12
import KelakonUser 0.1

CreateProfileForm {
	width: stackView.width
	height: stackView.height
	backButton.onClicked: stackView.pop()
	titleLabel.text: qsTr("Edit Profile")
	skipButton.onClicked: {
		login.ticketSearch(User.name)
		stackView.push("qrc:/pages/Home.qml")
	}
	enterFullName.text: User.realName
	userNameLabel.text: User.name
	emailAddressLabel.text: User.emailAddress
}
