// Importing necessary packages and libraries.
import 'package:flutter/material.dart'; // Importing Flutter's material package.
import 'package:get_buttons_stack/get_buttons_stack.dart'; // Importing the custom button library.

// A StatelessWidget representing a screen with various social media login buttons.
class SocialMediaLoginButtons extends StatelessWidget {
  // Constructor for the social media login buttons screen.
  const SocialMediaLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold widget provides a basic structure for the screen, including app bar and body.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
            'Social Media Logins'), // Title displayed in the app bar.
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Google Sign in button with light mode.
                const Text("Google Sign in button with light mode"),
                const SizedBox(height: 8,),
                GoogleSignInButton(
                  isContentWrapped: false,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Google Sign in button with dark mode.
                const Text("Google Sign in button with dark mode"),
                const SizedBox(height: 8,),
                GoogleSignInButton(
                  isContentWrapped: false,
                  isDark: true,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Google Sign in button in Caps and in dark mode.
                const Text("Google Sign in button in Caps and in dark mode"),
                const SizedBox(height: 8,),
                GoogleSignInButton(
                  isContentWrapped: false,
                  isDark: true,
                  isCaps: true,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Google Sign in button with content wrapped in light mode.
                const Text("Google Sign in button with content wrapped in light mode"),
                const SizedBox(height: 8,),
                GoogleSignInButton(
                  isContentWrapped: true,
                  onPressed: () {
                      // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Microsoft button with complete text and in light mode.
                const Text("Microsoft button with complete text and in light mode"),
                const SizedBox(height: 8,),
                MicrosoftSignInButton(
                  isContentWrapped: true,
                  onPressed: () {
                      // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Microsoft button with complete text and in dark mode.
                const Text("Microsoft button with complete text and in dark mode"),
                const SizedBox(height: 8,),
                MicrosoftSignInButton(
                  isContentWrapped: true,
                  isDark: true,
                  onPressed: () {
                      // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Microsoft button with complete text and in light mode and with border.
                const Text("Microsoft button with complete text and in light mode and with border"),
                const SizedBox(height: 8,),
                MicrosoftSignInButton(
                  isContentWrapped: true,
                  isBorderEnabled: true,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Microsoft button with short text and in light mode and with border.
                const Text("Microsoft button with short text and in light mode and with border"),
                const SizedBox(height: 8,),
                MicrosoftSignInButton(
                  isContentWrapped: true,
                  isBorderEnabled: true,
                  isShortend: true,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Microsoft button with short text and in dark mode.
                const Text("Microsoft button with short text and in dark mode"),
                const SizedBox(height: 8,),
                MicrosoftSignInButton(
                  isContentWrapped: true,
                  isDark: true,
                  isShortend: true,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Microsoft button with complete text and in dark mode and in caps.
                const Text("Microsoft button with complete text and in dark mode and in caps"),
                const SizedBox(height: 8,),
                MicrosoftSignInButton(
                  isContentWrapped: true,
                  isDark: true,
                  isCaps: true,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Microsoft button with complete text and in light mode and in caps.
                const Text("Microsoft button with complete text and in light mode and in caps"),
                const SizedBox(height: 8,),
                MicrosoftSignInButton(
                  isContentWrapped: true,
                  isDark: false,
                  isCaps: true,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Microsoft button with short text and in dark mode and caps.
                const Text("Microsoft button with short text and in dark mode and caps"),
                const SizedBox(height: 8,),
                MicrosoftSignInButton(
                  isContentWrapped: true,
                  isCaps: true,
                  isDark: true,
                  isShortend: true,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Microsoft button with full text and full width and border.
                const Text("Microsoft button with full text and full width and border"),
                const SizedBox(height: 8,),
                MicrosoftSignInButton(
                  isContentWrapped: false,
                  isBorderEnabled: true,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Microsoft button with full text and custom width.
                const Text("Microsoft button with full text and custom width"),
                const SizedBox(height: 8,),
                MicrosoftSignInButton(
                  width: 250,
                  isDark: true,
                  onPressed: () {
                      // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Facebook button.
                const Text("Facebook button"),
                const SizedBox(height: 8,),
                FacebookSignButton(onPressed: () {
                  // Callback when the button is pressed.
                }),
                const SizedBox(height: 8,),
                // Facebook button with full width.
                const Text("Facebook button with full width"),
                const SizedBox(height: 8,),
                FacebookSignButton(
                  isContentWrapped: false,
                  onPressed: () {
                      // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Facebook button with custom width and centered aligned.
                const Text("Facebook button with custom width and centered aligned"),
                const SizedBox(height: 8,),
                FacebookSignButton(
                  width: 260,
                  isContentWrapped: false,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Facebook button with custom width and centered aligned with radius.
                const Text("Facebook button with custom width and centered aligned with radius"),
                const SizedBox(height: 8,),
                FacebookSignButton(
                  width: 260,
                  radius: 20,
                  isContentWrapped: false,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Apple button with custom width and centered aligned for light mode.
                const Text("Apple button with custom width and centered aligned for light mode"),
                const SizedBox(height: 8,),
                AppleSignInButton(
                  width: 260,
                  isContentWrapped: false,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Apple button with dark mode.
                const Text("Apple button with dark mode"),
                const SizedBox(height: 8,),
                AppleSignInButton(
                  width: 260,
                  isContentWrapped: false,
                  isDark: true,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Apple button in dark mode with border and wrapped content.
                const Text("Apple button in dark mode with border and wrapped content"),
                const SizedBox(height: 8,),
                AppleSignInButton(
                  isContentWrapped: true,
                  isBorderedEnabled: true,
                  isDark: true,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Github button in dark mode with border and wrapped content.
                const Text("Github button in dark mode with border and wrapped content"),
                const SizedBox(height: 8,),
                GithubSignInButton(
                  isContentWrapped: true,
                  isBorderEnabled: true,
                  height: 50,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Github button with custom height and full screen width.
                const Text("Github button with custom height and full screen width"),
                const SizedBox(height: 8,),
                GithubSignInButton(
                  isContentWrapped: false,
                  height: 50,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Github button with radius.
                const Text("Github button with radius"),
                const SizedBox(height: 8,),
                GithubSignInButton(
                  isContentWrapped: false,
                  radius: 25,
                  height: 50,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Github button with radius and with custom width and height.
                const Text("Github button with radius and with custom width and height"),
                const SizedBox(height: 8,),
                GithubSignInButton(
                  isContentWrapped: false,
                  radius: 22.5,
                  height: 45,
                  width: 260,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
                const SizedBox(height: 8,),
                // Github login button with custom background and custom font and icon color.
                const Text("Github login button with custom background and custom font and icon color"),
                const SizedBox(height: 8,),
                GithubSignInButton(
                  backgroundColor: Colors.black,
                  fontColor: Colors.green,
                  isContentWrapped: false,
                  radius: 22.5,
                  height: 45,
                  width: 260,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {
                    // Callback when the button is pressed.
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
