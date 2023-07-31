import 'package:flutter/material.dart';
import 'package:get_buttons_stack/get_buttons_stack.dart';

class SocialMediaLoginButtons extends StatelessWidget {
  const SocialMediaLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Social Medial Logins'),
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text("Google Sign in button with light mode"),
                  const SizedBox(height: 8,),
                  GoogleSignInButton(isContentWrapped: false, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Google Sign in button with dark mode"),
                  const SizedBox(height: 8,),
                  GoogleSignInButton(isContentWrapped: false, isDark: true, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Google Sign in button in Caps and in dark mode"),
                  const SizedBox(height: 8,),
                  GoogleSignInButton(isContentWrapped: false, isDark: true, isCaps: true, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Google Sign in button with content wrapped in light mode"),
                  const SizedBox(height: 8,),
                  GoogleSignInButton(isContentWrapped: true, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Microsoft button with complete text and in light mode"),
                  const SizedBox(height: 8,),
                  MicrosoftSignInButton(isContentWrapped: true, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Microsoft button with complete text and in dark mode"),
                  const SizedBox(height: 8,),
                  MicrosoftSignInButton(isContentWrapped: true, isDark: true, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Microsoft button with complete text and in light mode and with border"),
                  const SizedBox(height: 8,),
                  MicrosoftSignInButton(isContentWrapped: true, isBorderEnabled: true, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Microsoft button with short text and in light mode and with border"),
                  const SizedBox(height: 8,),
                  MicrosoftSignInButton(isContentWrapped: true, isBorderEnabled: true, isShortend: true, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Microsoft button with short text and in dark mode"),
                  const SizedBox(height: 8,),
                  MicrosoftSignInButton(isContentWrapped: true, isDark: true, isShortend: true, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Microsoft button with complete text and in dark mode and in caps"),
                  const SizedBox(height: 8,),
                  MicrosoftSignInButton(isContentWrapped: true, isDark: true, isCaps: true, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Microsoft button with complete text and in light mode and in caps"),
                  const SizedBox(height: 8,),
                  MicrosoftSignInButton(isContentWrapped: true, isDark: false, isCaps: true, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Microsoft button with short text and in dark mode and caps"),
                  const SizedBox(height: 8,),
                  MicrosoftSignInButton(isContentWrapped: true, isCaps: true, isDark: true, isShortend: true, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Microsoft button with full text and full width and border"),
                  const SizedBox(height: 8,),
                  MicrosoftSignInButton(isContentWrapped: false, isBorderEnabled: true, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Microsoft button with full text and custom width"),
                  const SizedBox(height: 8,),
                  MicrosoftSignInButton(width: 250, isDark: true, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Facebook button"),
                  const SizedBox(height: 8,),
                  FacebookSignButton(onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Facebook button with full width"),
                  const SizedBox(height: 8,),
                  FacebookSignButton(isContentWrapped: false, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Facebook button with custom width and centered aligned"),
                  const SizedBox(height: 8,),
                  FacebookSignButton(width: 260, isContentWrapped: false, alignment: MainAxisAlignment.center, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Facebook button with custom width and centered aligned with radius"),
                  const SizedBox(height: 8,),
                  FacebookSignButton(width: 260, radius: 20, isContentWrapped: false, alignment: MainAxisAlignment.center, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Apple button with custom width and centered aligned for light mode"),
                  const SizedBox(height: 8,),
                  AppleSignInButton(width: 260, isContentWrapped: false, alignment: MainAxisAlignment.center, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Apple button with dark mode"),
                  const SizedBox(height: 8,),
                  AppleSignInButton(width: 260, isContentWrapped: false, isDark: true, alignment: MainAxisAlignment.center, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Apple button in dark mode with border and wrapped content"),
                  const SizedBox(height: 8,),
                  AppleSignInButton(isContentWrapped: true, isBorderedEnabled: true, isDark: true, alignment: MainAxisAlignment.center, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Github button in dark mode with border and wrapped content"),
                  const SizedBox(height: 8,),
                  GithubSignInButton(isContentWrapped: true, isBorderEnabled: true, height: 50, alignment: MainAxisAlignment.center, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Github button with custom height and full screen width"),
                  const SizedBox(height: 8,),
                  GithubSignInButton(isContentWrapped: false, height: 50, alignment: MainAxisAlignment.center, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Github button with radius"),
                  const SizedBox(height: 8,),
                  GithubSignInButton(isContentWrapped: false, radius: 25, height: 50, alignment: MainAxisAlignment.center, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Github button with radius and with custom width and height"),
                  const SizedBox(height: 8,),
                  GithubSignInButton(isContentWrapped: false, radius: 22.5, height: 45, width: 260, alignment: MainAxisAlignment.center, onPressed: (){}),
                  const SizedBox(height: 8,),

                  const Text("Github login button with custom background and custom font and icon color"),
                  const SizedBox(height: 8,),
                  GithubSignInButton(backgroundColor: Colors.black, fontColor: Colors.green,isContentWrapped: false, radius: 22.5, height: 45, width: 260, alignment: MainAxisAlignment.center, onPressed: (){}),
                  const SizedBox(height: 8,),

                ],
              ),
            ),
          )
      ),
    );
  }
}