import QtQuick 2.12

CreateProfileForm {
	width: stackView.width
	height: stackView.height

	backButton {
		onClicked: {
			stackView.pop()
		}
	}
    skipButton {
        onClicked: {
            stackView.push("qrc:/pages/Home.qml")
        }
    }
}
