import QtQuick 2.12

LoginForm {
	signal logIn(string name, string password)
	signal signUp(string name, string password, string emailAddress
	, string realName)
	signal search(string name)
	function pushProfile() {
		stackView.push("qrc:/pages/Profile.qml")
	}

	objectName: "login"
	width: appWindow.width
	height: appWindow.height
	googleButton.onClicked: stackView.push("qrc:/pages/LoginName.qml")
	emailButton.onClicked: stackView.push("qrc:/pages/Email.qml")
}
