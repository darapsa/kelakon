import QtQuick 2.12
import "larva/features"

LoginForm {
	toolButton.onClicked:
				if (pageView.depth > 1)
					pageView.pop()
				else
					drawer.open()

	contentView.initialItem: LoginEmail{}
}
