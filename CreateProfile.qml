import QtQuick 2.12
import KelakonUser 0.1
import "pages"

CreateProfileForm {
	backButton {
		icon.source: "../assets/arrow-back-24px.svg"
		onClicked: pageView.pop()
	}

	skipButton.onClicked: pageView.push("Home.qml")
	emailImage.source: "../assets/email-24px.svg"
	emailAddressLabel.text: User.emailAddress
	startUsingKelakon.onClicked: {
		User.name = userNameLabel.text
		User.realName = enterFullName.text
		onboarding.ticketNew("Kelakon", User.realName + " <" + User.emailAddress
		+ ">")
	}
}
