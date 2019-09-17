import QtQuick 2.12

LoginForm {
	signal logIn(string name, string password)
	signal signUp(
		string name
		, string emailAddress
		, string realName
		, string nickName
		, string gecos
		, int lang
		, int timeZone
		, string contactInfo
		, bool enabled
		, bool privileged
		, string password
		, string comments
		, string signature
		, string organization
		, string address1
		, string address2
		, string city
		, string state
		, string zip
		, string country
		, string homePhone
		, string workPhone
		, string mobilePhone
		, string pagerPhone)
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
