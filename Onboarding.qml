import QtQuick 2.12
import "larva/features"

OnboardingForm {
	signal logIn(string name, string password)
	signal ticketNew(string queue, string requestor)
	signal ticketSearch(string name)
	function pushProfile() {
		pageView.push("Profile.qml")
	}

	objectName: "onboarding"
	logoImage.source: "kelakon-logo.png"
	registerButton.onClicked: pageView.push("Email.qml")
	loginButton.onClicked: pageView.push("Login.qml")
}
