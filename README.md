# Get Buttons Stack Library

A collection of customizable and ready-to-use buttons for various social sign-ins and network operations.

## Table of Contents
- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Available Buttons](#available-buttons)
    - [Customized Button](#customized-button)
    - [Google Sign-In Button](#google-sign-in-button)
    - [Facebook Sign-In Button](#facebook-sign-in-button)
    - [Microsoft Sign-In Button](#microsoft-sign-in-button)
    - [Apple Sign-In Button](#apple-sign-in-button)
    - [GitHub Sign-In Button](#github-sign-in-button)
    - [Network Spinning Button](#network-spinning-button)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The `get_buttons_stack` library is a collection of Flutter buttons designed to simplify the process of implementing various social sign-in buttons and network operation buttons in your Flutter application. The buttons are highly customizable, allowing you to match them to your app's design and branding effortlessly.

## Installation

To use this library, you need to add it as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  get_buttons_stack: ^1.0.0  # Replace with the latest version
```

Then, run `flutter pub get` to fetch the library.

## Usage

To use any of the buttons provided by this library, import the respective button file in your Flutter project and add the button widget to your UI.

```dart
import 'package:flutter/material.dart';
import 'package:get_buttons_stack/customised_button.dart';
import 'package:get_buttons_stack/social/google_sign_in_button.dart';

class MyLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomizedButton(
              onPressed: () {
                // Handle button tap
              },
              text: 'Custom Button',
              // Customize button properties here
            ),
            SizedBox(height: 16),
            GoogleSignInButton(
              onPressed: () {
                // Handle Google Sign-In button tap
              },
            ),
            // Add other buttons as needed
          ],
        ),
      ),
    );
  }
}
```

## Available Buttons

### Customized Button

A highly customizable button that can be tailored to your app's design and functionality.

### Google Sign-In Button

A button for authenticating users using Google Sign-In.

### Facebook Sign-In Button

A button for authenticating users using Facebook Sign-In.

### Microsoft Sign-In Button

A button for authenticating users using Microsoft Sign-In.

### Apple Sign-In Button

A button for authenticating users using Apple Sign-In.

### GitHub Sign-In Button

A button for authenticating users using GitHub Sign-In.

### Network Spinning Button

A button with a built-in loading indicator, ideal for handling network operations.

## Contributing

We welcome contributions from the community! If you encounter any issues, have ideas for improvements, or want to add new features, please feel free to submit a pull request. For major changes, please open an issue to discuss the changes beforehand.

## License

This project is licensed under the [MIT License](https://github.com/DevCrew-io/get-buttons-stack/blob/main/LICENSE). Feel free to use, modify, and distribute it as per the terms of the license.

---

Thank you for using the `get_buttons_stack` library! We hope it simplifies the implementation of buttons in your Flutter app. If you have any questions or need further assistance, don't hesitate to reach out to us.

**Happy coding!**