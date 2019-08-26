import QtQuick 2.12

LoginForm {
	emailButton {
		onClicked: {
			stackView.push("qrc:/pages/Email.qml")
		}
	}
}
