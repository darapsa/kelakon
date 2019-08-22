import QtQuick 2.12

EmailForm {
    width: stackView.width
    height: stackView.height

    loginButton {
        onClicked: {
            appWindow.logIn("62" + phoneTextField.text, passwordTextField.text)
        }
    }

    laterButton {
        onClicked: {
            stackView.pop()
        }
    }
}
