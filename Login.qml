import QtQuick 2.12

LoginForm {
	width: appWindow.width
	height: appWindow.height

	emailButton {
		onClicked: {
			stackView.push("qrc:/pages/Email.qml")
		}
	}
}
