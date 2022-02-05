import QtQuick 2.15
import QtQuick.Controls 2.15
import "larva/features"

ApplicationWindow {
	signal logIn(string name, string password)
	signal ticketHistoryList(int id, bool longFormat)
	signal ticketNew(string queue, string requestor)
	function pushHome() {
		pageView.push("Home.qml", {
			"width": window.width,
			"height": window.height
		})
	}
	function pushTicketHistory() {
		pageView.push("TicketHistory.qml")
	}

	id: window
	visible: true
	width: 360
	height: 640

	OnboardingForm {
		id: pageView
		anchors.fill: parent
		logoImage.source: "kelakon-logo.png"
		onboardingImage.source: "onboarding-1.png"
		onboardingText1.text: qsTr("Get things done today, chill tomorrow.")
		registerButton.onClicked: pageView.push("Email.qml")
		loginButton.onClicked: pageView.push("Login.qml")
	}
}
