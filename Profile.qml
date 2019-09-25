import QtQuick 2.12
import KelakonUser 0.1
import "larva/features"

ProfileForm {
	backButton.onClicked: pageView.pop()
	editToolButton.onClicked: pageView.push("/larva/features/ProfileEditForm.ui.qml")
	fullnameLabel.text: User.realName
	usernameLabel.text: User.name
	userEmailLabel.text: User.emailAddress
}
