import QtQuick 2.12
import "larva/features"

OnboardingForm {
	signal logIn(string name, string password)
	signal ticketNew(string queue, string requestor)
	signal ticketSearch(string name)
	function pushProfile() {
		stackView.push("qrc:/pages/Profile.qml")
	}

	objectName: "login"
	width: appWindow.width
	height: appWindow.height
	logoImage.source: "kelakon-logo.png"
	registerButton.onClicked: stackView.push("qrc:/pages/Email.qml")
	loginButton.onClicked: stackView.push("qrc:/pages/LoginName.qml")
}
