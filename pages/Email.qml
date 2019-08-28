import QtQuick 2.12

EmailForm {
	width: stackView.width
	height: stackView.height

	loginButton {
		onClicked: {
			stackView.push("qrc:/pages/Password.qml")
		}
	}
}
