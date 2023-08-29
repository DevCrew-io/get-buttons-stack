// Importing necessary packages and libraries.
import 'package:example/social_media_login_buttons.dart'; // Importing a custom widget from another file.
import 'package:flutter/material.dart'; // Importing Flutter's material package.
import 'package:get_buttons_stack/get_buttons_stack.dart'; // Importing the custom button library.
import '../custom_button_with_properties.dart';

// A StatelessWidget representing the home page of the application.
class HomePage extends StatelessWidget {
  // Constructor for the home page.
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Creating an instance of HomeController using GetX and adding it to the dependency tree.

    // Scaffold widget provides a basic structure for the screen, including app bar and body.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Flutter Button Stack"), // Title displayed in the app bar.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                // Button to navigate to a screen with social media login buttons.
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SocialMediaLoginButtons(),
                      ),
                    );
                  },
                  child: const Text("Social media buttons"),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Button to navigate to a screen with custom buttons and properties.
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CustomButtonWithProperties(),
                      ),
                    );
                  },
                  child: const Text("Custom button"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const _MyNetworkButton()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MyNetworkButton extends StatefulWidget {

  const _MyNetworkButton({super.key});

  @override
  State<_MyNetworkButton> createState() => _MyNetworkButtonState();
}

class _MyNetworkButtonState extends State<_MyNetworkButton> {

  var buttonState = ButtonState.idle;

  @override
  Widget build(BuildContext context) {
    return NetworkButton(title: "Network Spinning", buttonState: buttonState, onPressed: () {
      setState(() {
        buttonState = buttonState == ButtonState.spinning ? ButtonState.idle : ButtonState.spinning ;
      });
    });
  }

}
