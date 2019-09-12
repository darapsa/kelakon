import QtQuick 2.12

LoginForm {
	signal logIn(string name, string password)

	objectName: "login"
	width: appWindow.width
	height: appWindow.height

	emailButton {
		onClicked: {
			stackView.push("qrc:/pages/Email.qml")
		}
	}
}
