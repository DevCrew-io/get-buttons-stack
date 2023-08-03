/// A library that provides custom sign-in buttons for various social media platforms.
///
/// The `get_buttons_stack` library exports multiple custom sign-in button widgets,
/// which can be used to integrate social media sign-in functionality into your Flutter app.
///
/// Available buttons:
/// - [GoogleSignInButton]: A button that displays the Google logo and allows users to sign in with Google.
/// - [FacebookSignInButton]: A button that displays the Facebook logo and allows users to sign in with Facebook.
/// - [MicrosoftSignInButton]: A button that displays the Microsoft logo and allows users to sign in with Microsoft.
/// - [AppleSignInButton]: A button that displays the Apple logo and allows users to sign in with Apple.
/// - [GithubSignInButton]: A button that displays the GitHub logo and allows users to sign in with GitHub.
///
/// To use these buttons, import the `get_buttons_stack` library and use the exported widgets.
/// For example, to use the [GoogleSignInButton], you can import the library and use it in your code like this:
///
/// ```dart
/// import 'package:flutter/material.dart';
/// import 'package:get_buttons_stack/get_buttons_stack.dart';
///
/// class MySignInScreen extends StatelessWidget {
///   @override
///   Widget build(BuildContext context) {
///     return Scaffold(
///       appBar: AppBar(
///         title: Text('Sign In'),
///       ),
///       body: Center(
///         child: GoogleSignInButton(
///           onPressed: () {
///             // Handle the Google sign-in logic here.
///           },
///         ),
///       ),
///     );
///   }
/// }
/// ```
///
/// Note that each button widget accepts various properties to customize their appearance and behavior.
library get_buttons_stack;
export 'src/customised_button.dart';
export 'src/social/google_sign_in_button.dart';
export 'src/social/fb_sign_in_button.dart';
export 'src/social/microsoft_sign_in_button.dart';
export 'src/social/apple_sign_in_button.dart';
export 'src/social/github_sign_in_button.dart';

