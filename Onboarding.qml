import QtQuick 2.12
import "larva/features"

OnboardingForm {
	signal logIn(string name, string password)
	signal ticketNew(string queue, string requestor)
	function pushHome() {
		pageView.push("Home.qml")
	}

	objectName: "onboarding"
	logoImage.source: "kelakon-logo.png"
	onboardingImage.source: "onboarding-1.png"
	registerButton.onClicked: pageView.push("Email.qml")
	loginButton.onClicked: pageView.push("Login.qml")
}
