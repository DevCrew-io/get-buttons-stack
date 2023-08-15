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

The `CustomisedButton` is a versatile custom Flutter widget that allows you to create highly customizable buttons with various configurations.

#### Usage

To use the `CustomisedButton`, import the package and add the button to your UI:

```dart
import 'package:flutter/material.dart';
import 'package:get_buttons_stack/customised_button.dart';

class MyButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Page'),
      ),
      body: Center(
        child: CustomisedButton(
          onPressed: () {
            // Handle button tap
            // Add your button's logic here
          },
          // Customize the button properties as needed
        ),
      ),
    );
  }
}
```

#### Customization

The `CustomisedButton` provides several properties to customize its appearance:

- `title`: The title or label of the button.
- `radius`: The corner radius of the button (default: 0).
- `width`: The optional width of the button.
- `height`: The height of the button (default: 40).
- `fontSize`: The font size of the title text (default: 15).
- `backgroundColor`: The background color of the button (default: `Colors.white`).
- `fontColor`: The font color of the title text.
- `imageColor`: The color of the icon or image.
- `isElevated`: Flag to indicate if the button should have an elevation (shadow) effect (default: true).
- `fontFamily`: The custom font family for the button text.
- `alignment`: The alignment of the button's content (default: `MainAxisAlignment.start`).
- `isBorderEnabled`: Flag to indicate if the button should have a border (default: false).
- `borderColor`: The color of the border.
- `borderWidth`: The width of the border of button.
- `fontWeight`: The font weight of the title text (default: `FontWeight.w500`).
- `iconSize`: The size of the icon or image (default: null).
- `isContentWrapped`: Flag to indicate if the content of the button should be wrapped (default: false).
- `icon`: The icon to display in the button (either use `icon` or `imagePath`).
- `imagePath`: The path of the image to display in the button (either use `icon` or `imagePath`).
- `onPressed`: Callback function to be executed when the button is pressed (required).

Feel free to modify these properties according to your app's design and requirements.

#### Demo

<img src="https://github.com/DevCrew-io/get-buttons-stack/blob/add-readme-screenshot/screenshots/customised_buttons.png" alt="Alt Text" width="300">

### Google Sign-In Button

The `GoogleSignInButton` is a custom Flutter widget designed to display a Google sign-in button in your application. This button allows users to sign in with their Google account. It is highly customizable, allowing you to adjust various properties such as title, button appearance, font size, and more.

#### Usage

To use the `GoogleSignInButton`, import the package and add the button to your UI:

```dart
import 'package:flutter/material.dart';
import 'package:get_buttons_stack/google_sign_in_button.dart';

class MyLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: GoogleSignInButton(
          onPressed: () {
            // Handle Google sign-in button tap
            // Add your Google sign-in logic here
          },
          // Customize the button properties as needed
        ),
      ),
    );
  }
}
```

#### Customization

The `GoogleSignInButton` provides several properties to customize its appearance as per [google sign-in button's guideline](https://developers.google.com/identity/branding-guidelines):

- `title`: The title or label of the button (default: "Sign in with Google").
- `isCaps`: Flag to indicate if the title should be displayed in all uppercase letters (default: false).
- `radius`: The corner radius of the button (default: 0).
- `width`: The optional width of the button.
- `isDark`: Flag to indicate if the button should have a dark theme (default: false).
- `height`: The height of the button (default: 40).
- `isContentWrapped`: Flag to indicate if the content of the button should be wrapped (default: true).
- `onPressed`: Callback function to be executed when the button is pressed (required).

Feel free to modify these properties according to your app's design and requirements.

### Facebook Sign-In Button

The `FacebookSignButton` is a custom Flutter widget designed to display a Facebook sign-in button in your application. This button allows users to sign in with their Facebook account. It is highly customizable, allowing you to adjust various properties as per design guideline by [Facebook](https://developers.facebook.com/docs/facebook-login/userexperience/#buttondesign).

#### Usage

To use the `FacebookSignButton`, import the package and add the button to your UI:

```dart
import 'package:flutter/material.dart';
import 'package:get_buttons_stack/facebook_sign_button.dart';
   //-----------------------OR--------------------\\
import 'package:get_buttons_stack/get_buttons_stack.dart';

class MyLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: FacebookSignButton(
          onPressed: () {
            // Handle Facebook sign-in button tap
            // Add your Facebook sign-in logic here
          },
          // Customize the button properties as needed
        ),
      ),
    );
  }
}
```

#### Customization

The `FacebookSignButton` provides several properties to customize its appearance. Customisation of properties are added as per [facebook's button design guideline](https://developers.facebook.com/docs/facebook-login/userexperience/#buttondesign). Check link before you want to apply customisation.s

- `title`: The title or label of the button (default: "Continue with Facebook").
- `inCaps`: Flag to indicate if the title should be displayed in all uppercase letters (default: false).
- `radius`: The corner radius of the button (default: 0).
- `width`: If you want to set fixed width then use this parameter.
- `height`: The height of the button (default: 40).
- `isContentWrapped`: Flag to indicate if the content of the button should be wrapped (default: true).
- `alignment`: The horizontal alignment of the button's content (default: `MainAxisAlignment.start`) and possible values are `MainAxisAlignment.start`, `MainAxisAlignment.center` and `MainAxisAlignment.end`.
- `isTextOnly`: Flag to indicate if the button should display text only (default: false).
- `buttonColorTheme`: The color theme of the button (default: `ButtonColorTheme.blueWithWhite`).
- `onPressed`: Callback function to be executed when the button is pressed (required).

The `buttonColorTheme` property allows you to choose from four different color themes for the button:

1. `ButtonColorTheme.blueWithWhite`: Blue background with white text.
2. `ButtonColorTheme.whiteWithBlue`: White background with blue text.
3. `ButtonColorTheme.blackWithWhite`: Black background with white text.
4. `ButtonColorTheme.whiteWithBlack`: White background with black text.

Feel free to modify these properties according to your app's design and requirements.

### Microsoft Sign-In Button

The `MicrosoftSignInButton` is a custom Flutter widget designed to display a Microsoft sign-in button in your application. This button allows users to sign in using their Microsoft account. It is highly customizable, allowing you to adjust various properties such as button appearance, theme, font size, and more.

#### Usage

To use the `MicrosoftSignInButton`, import the package and add the button to your UI:

```dart
import 'package:flutter/material.dart';
import 'package:get_buttons_stack/microsoft_sign_in_button.dart';

class MyLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: MicrosoftSignInButton(
          onPressed: () {
            // Handle Microsoft sign-in button tap
            // Add your Microsoft sign-in logic here
          },
          // Customize the button properties as needed
        ),
      ),
    );
  }
}
```

#### Customization

The `MicrosoftSignInButton` provides several properties to customize its appearance as per [microsoft sign-in button's guideline](https://learn.microsoft.com/en-us/azure/active-directory/develop/howto-add-branding-in-apps):

- `radius`: The corner radius of the button (default: 0).
- `width`: The optional width of the button.
- `isDark`: Flag to indicate if the button should have a dark theme (default: false).
- `isShortend`: Flag to indicate if the button text should be shortened (default: false).
- `alignment`: The alignment of the button's content (default: `MainAxisAlignment.center`).
- `isContentWrapped`: Flag to indicate if the content of the button should be wrapped (default: true).
- `isBorderEnabled`: Flag to indicate if the button should have a border (default: false).
- `height`: The height of the button (default: 41.0).
- `isCaps`: Flag to indicate if the button text should be displayed in all uppercase letters (default: false).
- `onPressed`: Callback function to be executed when the button is pressed (required).

Feel free to modify these properties according to your app's design and requirements.

#### Demo

<img src="https://github.com/DevCrew-io/get-buttons-stack/blob/add-readme-screenshot/screenshots/microsoft_buttons.png" alt="Alt Text" width="300">
<img src="https://github.com/DevCrew-io/get-buttons-stack/blob/add-readme-screenshot/screenshots/microsoft_buttons2.png" alt="Alt Text" width="300">

### Apple Sign-In Button

The `AppleSignInButton` is a custom Flutter widget designed to display an Apple sign-in button in your application. This button allows users to sign in with their Apple ID. It is highly customizable, allowing you to adjust various properties such as title, button appearance, font size, icon size, and more.

#### Usage

To use the `AppleSignInButton`, import the necessary packages and add the button to your UI:

```dart
import 'package:flutter/material.dart';
import 'package:get_buttons_stack/apple_sign_in_button.dart';

class MyLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: AppleSignInButton(
          onPressed: () {
            // Handle Apple sign-in button tap
            // Add your Apple sign-in logic here
          },
          // Customize the button properties as needed
        ),
      ),
    );
  }
}
```

#### Customization

The `AppleSignInButton` provides several properties to customize its appearance as per [apple's design guideline](https://developer.apple.com/design/human-interface-guidelines/sign-in-with-apple#Creating-a-custom-Sign-in-with-Apple-button):

- `title`: The title or label of the button (default: "Sign in with Apple").
- `radius`: The corner radius of the button (default: 4).
- `width`: The optional width of the button.
- `isDark`: Flag to indicate if the button should have a dark theme (default: false).
- `isBorderedEnabled`: Flag to indicate if the button should have a border (default: false).
- `alignment`: The alignment of the button's content (default: `MainAxisAlignment.start`).
- `isContentWrapped`: Flag to indicate if the content of the button should be wrapped (default: true).
- `fontFamily`: preferable is system but apple allow to change font family as per your need or design requirement.
- `fontWeight`: default font weight is semibold but apple allow user to set font weight as per design need. 
- `isCaps`: Flag to indicate if the title should be displayed in all uppercase letters (default: false).
- `height`: The height of the button (default: 44).
- `onPressed`: Callback function to be executed when the button is pressed (required).

Feel free to modify these properties according to your app's design and requirements.

### GitHub Sign-In Button


The `GithubSignInButton` is a custom Flutter widget designed to display a GitHub sign-in button in your application. This button allows users to sign in with their GitHub account. It is highly customizable, allowing you to adjust various properties such as title, button appearance, font size, icon size, and more.

#### Usage

To use the `GithubSignInButton`, import the necessary packages and add the button to your UI:

```dart
import 'package:flutter/material.dart';
import 'package:get_buttons_stack/github_sign_in_button.dart';

class MyLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: GithubSignInButton(
          onPressed: () {
            // Handle GitHub sign-in button tap
            // Add your GitHub sign-in logic here
          },
          // Customize the button properties as needed
        ),
      ),
    );
  }
}
```

#### Customization

The `GithubSignInButton` provides several properties to customize its appearance:

- `title`: The title or label of the button (default: "Sign in with Github").
- `radius`: The corner radius of the button (default: 0).
- `width`: The optional width of the button.
- `height`: The height of the button (default: 40).
- `fontSize`: The font size of the title text (default: 15).
- `fontFamily`: The font which you want to use as per your design need
- `backgroundColor`: The background color of the button (default: `Colors.white`).
- `fontColor`: The font color of the title text and this will assign to icon as well.
- `alignment`: The alignment of the button's content (default: `MainAxisAlignment.start`). Possible values are `MainAxisAlignment.start`, `MainAxisAlignment.center` and `MainAxisAlignment.end`
- `isBorderEnabled`: Flag to indicate if the button should have a border (default: false).
- `fontWeight`: The font weight of the title text (default: `FontWeight.w500`).
- `iconSize`: The size of the GitHub logo icon (default: 24).
- `isContentWrapped`: Flag to indicate if the content of the button should be wrapped (default: false).
- `onPressed`: Callback function to be executed when the button is pressed (required).

Feel free to modify these properties according to your app's design and requirements.

### Network Button

The `NetworkButton` is a custom Flutter widget designed to create a button that can display either an icon or an image along with an optional text label. This button is particularly useful when you want to provide visual feedback to users while waiting for a network operation to complete, such as loading data or performing an authentication request.

#### Usage

To use the `NetworkButton`, import the necessary packages and add the button to your UI:

```dart
import 'package:flutter/material.dart';
import 'package:get_buttons_stack/network_button.dart';

class MyButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Page'),
      ),
      body: Center(
        child: NetworkButton(
          onPressed: (changeState, state) {
            // Add your button's logic here
            // Call the `changeState` function to switch between 'idle' and 'spinning' states
          },
          // Customize the button properties as needed
        ),
      ),
    );
  }
}
```

### Customization

The `NetworkButton` provides several properties to customize its appearance and behavior:

- `title`: The title or label of the button.
- `buttonState` The state of button on which it's appearance will be changed i-e idle or spinning (default: ButtonState.idle)
- `loadingText`: The text to display when the button is in the `spinning` state (default: "Loading...").
- `radius`: The corner radius of the button (default: 0).
- `width`: The optional width of the button.
- `height`: The height of the button (default: 40).
- `fontSize`: The font size of the title text (default: 15).
- `backgroundColor`: The background color of the button (default: `Colors.white`).
- `fontColor`: The font color of the title text.
- `imageColor`: The color of the icon or image inside the button.
- `isElevated`: Flag to indicate if the button should have an elevation (shadow) effect (default: true).
- `fontFamily`: The custom font family for the button text.
- `spacing`: The spacing between icon/image and text label (default: 8).
- `spinnerColor`: The color of the spinner (loading indicator) (default: `Colors.black`).
- `spinnerWidth`: The width of the spinner's stroke (default: 3.0).
- `spinnerBackgroundColor`: The background color of the spinner.
- `alignment`: The alignment of the button's content (default: `MainAxisAlignment.start`).
- `isBorderEnabled`: Flag to indicate if the button should have a border (default: false).
- `fontWeight`: The font weight of the title text (default: `FontWeight.w500`).
- `iconSize`: The size of the icon in the button (default: 20).
- `isContentWrapped`: Flag to indicate if the content of the button should be wrapped (default: true).
- `icon`: The icon to display in the button (either use `icon` or `imagePath`).
- `imagePath`: The path of the image to display in the button (either use `icon` or `imagePath`).
- `onPressed`: Callback function to be executed when the button is pressed (required).

Feel free to modify these properties according to your app's design and requirements.

#### Button States

The `NetworkButton` supports two states:

1. `idle`: The default state of the button, where the icon, image, and text label are visible.
2. `spinning`: This state is triggered when the button is pressed, indicating that the network operation is in progress. The icon or image is replaced with a spinning progress indicator, and the text label is replaced with the `loadingText`.

## Contributing

We welcome contributions from the community! If you encounter any issues, have ideas for improvements, or want to add new features, please feel free to submit a pull request. For major changes, please open an issue to discuss the changes beforehand.

## License

This project is licensed under the [MIT License](https://github.com/DevCrew-io/get-buttons-stack/blob/main/LICENSE). Feel free to use, modify, and distribute it as per the terms of the license.

---

Thank you for using the `get_buttons_stack` library! We hope it simplifies the implementation of buttons in your Flutter app. If you have any questions or need further assistance, don't hesitate to reach out to us.

**Happy coding!**