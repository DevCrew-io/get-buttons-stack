// Importing necessary packages and libraries.
import 'package:example/social_media_login_buttons.dart'; // Importing a custom widget from another file.
import 'package:flutter/material.dart'; // Importing Flutter's material package.
import 'package:get_buttons_stack/get_buttons_stack.dart'; // Importing the custom button library.
import 'package:get/get.dart';
import '../custom_button_with_properties.dart';
import 'home_controller.dart';

// A StatelessWidget representing the home page of the application.
class HomePage extends StatelessWidget {
  // Constructor for the home page.
  final String title;

  const HomePage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    // Creating an instance of HomeController using GetX and adding it to the dependency tree.
    final controller = Get.put(HomeController());

    // Scaffold widget provides a basic structure for the screen, including app bar and body.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title), // Title displayed in the app bar.
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
                // Obx widget listens to changes in button state and updates the UI accordingly.
                Obx(
                      () => NetworkButton(
                    buttonState: controller.buttonState.value,
                    title: "Network Spinning",
                    iconData: Icons.login,
                    onPressed: () {
                      controller.callServerRequest(); // Initiating a server request when the button is pressed.
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}