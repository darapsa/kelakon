import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
	id: appWindow
	width: 360
	height: 640
	visible: true

	StackView {
		id: stackView
		initialItem: Login {}
	}
}
