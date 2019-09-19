import QtQuick 2.12
import "pages"

HomeForm {
	menuButton.onClicked: drawer.visible = !drawer.visible

	TaskList {
		anchors.top: toolbar.bottom
	}
}
