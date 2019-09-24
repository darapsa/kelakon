import QtQuick 2.12
import KelakonUser 0.1
import "larva/features"

CreateProfileForm {
	backButton.onClicked: pageView.pop()
	skipButton.onClicked: pageView.push("Home.qml")
	emailAddressLabel.text: User.emailAddress
	startUsingKelakon.onClicked: {
		User.name = userNameLabel.text
		User.realName = enterFullName.text
		onboarding.ticketNew("Kelakon", User.realName + " <"
			+ User.emailAddress + ">")
	}
}
