import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12


ApplicationWindow {
	id: window
	visible: true
	width: 360
	height: 640
	title: {
		text: qsTr("kelakon")
	}

	StackView {
		property alias onboarding: onboarding
		id: pageView
		anchors.fill: parent
		initialItem: Onboarding {
			id: onboarding
			onboardingText1.text: qsTr("Get things done today, chill tomorrow.")
		}
	}
}
