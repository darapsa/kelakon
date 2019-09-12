import QtQuick 2.12

HomeForm {
	width: stackView.width
	height: stackView.height
	menuButton.onClicked: drawer.visible = !drawer.visible
}
