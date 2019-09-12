import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

ApplicationWindow {
	property alias login: login

	id: appWindow
	width: 360
	height: 640
	visible: true
	Material.accent: Material.DeepPurple

	Drawer {
		id: drawer
		width: 0.8 * appWindow.width
		height: appWindow.height
	}

	StackView {
		id: stackView
		anchors.fill : parent

		initialItem: Login {
			id: login
		}
	}
}
