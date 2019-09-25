import QtQuick 2.12
import KelakonUser 0.1
import "larva/features"

ProfileForm {
	backButton.onClicked: pageView.pop()
	editToolButton.onClicked: {
		userEmailTextField.text = User.emailAddress
		usernameTextField.text = User.name
		fullnameTextField.text = User.realName
		editToolButton.visible = false
		fullnameLabel.visible = false
		usernameLabel.visible = false
		userEmailLabel.visible = false
		saveProfileButton.visible = true
		fullnameTextField.visible = true
		usernameTextField.visible = true
		userEmailTextField.visible = true
	}
	saveProfileButton.onClicked: {
		User.emailAddress = userEmailTextField.text
		User.name = usernameTextField.text
		User.realName = fullnameTextField.text
		fullnameLabel.text = User.realName
		usernameLabel.text = User.name
		userEmailLabel.text = User.emailAddress
		saveProfileButton.visible = false
		fullnameTextField.visible = false
		usernameTextField.visible = false
		userEmailTextField.visible = false
		editToolButton.visible = true
		fullnameLabel.visible = true
		usernameLabel.visible = true
		userEmailLabel.visible = true
	}
	fullnameLabel.text: User.realName
	usernameLabel.text: User.name
	userEmailLabel.text: User.emailAddress
}
