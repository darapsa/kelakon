import QtQuick 2.12

LoginForm {
	signal logIn(string name, string password)
	signal search(string name)
	function pushProfile() {
		stackView.push("qrc:/pages/CreateProfile.qml")
	}

	objectName: "login"
	width: appWindow.width
	height: appWindow.height
	emailButton.onClicked: stackView.push("qrc:/pages/Email.qml")
}
