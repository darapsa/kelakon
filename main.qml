import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

ApplicationWindow {
	id: appWindow
	width: 360
	height: 640
	visible: true
	Material.accent: Material.DeepPurple

	signal logIn(string name, string password)

	Drawer {
		id: drawer
		width: 0.8 * appWindow.width
		height: appWindow.height
	}

	StackView {
		id: stackView
		anchors.fill : parent

		initialItem: Login {}
	}
}
