import QtQuick 2.12
import KelakonUser 0.1
import "pages"

CreateProfileForm {
	backButton {
		icon.source: "larva/components/icons/arrow-back-24px.svg"
		onClicked: pageView.pop()
	}
	titleLabel.text: qsTr("Edit Profile")
	skipButton.onClicked: {
		pageView.push("Home.qml")
	}
	emailImage.source: "larva/components/icons/email-24px.svg"
	enterFullName.text: User.realName
	userNameLabel.text: User.name
	emailAddressLabel.text: User.emailAddress
}
