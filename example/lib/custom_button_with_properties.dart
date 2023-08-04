
// Importing required packages and libraries from Flutter.
import 'package:flutter/material.dart';
import 'package:get_buttons_stack/get_buttons_stack.dart';

// A custom Flutter widget class that represents a screen with various customized buttons.
class CustomButtonWithProperties extends StatelessWidget {
  // Constructor for the custom widget.
  const CustomButtonWithProperties({super.key});

  // The build method to create and return the widget hierarchy.
  @override
  Widget build(BuildContext context) {
    // Scaffold widget provides a basic structure for the screen, including app bar and body.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Custom Button with Properties'), // Title displayed in the app bar.
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Button with title properties fontFamily, fontSize, fontWeight, fontColor and textAlignment",
                  style: TextStyle(),
                ),
                const SizedBox(
                  height: 8,
                ),
                // Creating a custom button with various properties.
                CustomisedButton(
                  title: "Title properties",
                  fontFamily: "Lumanosimo",
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  alignment: MainAxisAlignment.center,
                  fontColor: Colors.amberAccent,
                  onPressed: () {}, // Callback when the button is pressed.
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text("Button with backgroundColor "),
                const SizedBox(
                  height: 8,
                ),
                // Creating another custom button with a different background color.
                CustomisedButton(
                  title: "Background Color",
                  backgroundColor: Colors.greenAccent,
                  fontFamily: "Lumanosimo",
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                    "Button with cornerRadius and Border(width and color)"),
                const SizedBox(
                  height: 8,
                ),
                // Creating a button with rounded corners, border, and background color.
                CustomisedButton(
                  radius: 20,
                  borderColor: Colors.black,
                  borderWidth: 2,
                  isBorderEnabled: true,
                  title: "Radius and Border",
                  backgroundColor: Colors.greenAccent,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text("Without elevation"),
                const SizedBox(
                  height: 8,
                ),
                // Creating a button without elevation.
                CustomisedButton(
                  radius: 20,
                  title: "Without elevation",
                  backgroundColor: Colors.lightBlue,
                  fontFamily: "Roboto",
                  isElevated: false,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text("With icons and icon color"),
                const SizedBox(
                  height: 8,
                ),
                // Creating a button with an icon and a specific icon color.
                CustomisedButton(
                  radius: 20,
                  title: "Icon and Color",
                  fontFamily: "Roboto",
                  iconData: Icons.access_time_sharp,
                  imageColor: Colors.green,
                  isElevated: true,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text("Custom Width and Height"),
                const SizedBox(
                  height: 8,
                ),
                // Creating a button with custom width and height.
                CustomisedButton(
                  radius: 20,
                  title: "Width and Height",
                  width: 250,
                  height: 50,
                  fontFamily: "Roboto",
                  iconData: Icons.access_time_sharp,
                  imageColor: Colors.green,
                  isElevated: true,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text("Content Wrapped"),
                const SizedBox(
                  height: 8,
                ),
                // Creating a button with wrapped content.
                CustomisedButton(
                  radius: 20,
                  title: "Content Wrapped",
                  fontFamily: "Roboto",
                  iconData: Icons.access_time_sharp,
                  imageColor: Colors.green,
                  isElevated: true,
                  isContentWrapped: true,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {},
                ),
                const SizedBox(height: 8,),
                const Text("Icon and text spacing"),
                const SizedBox(height: 8,),
                // Creating a button with spacing between icon and text.
                CustomisedButton(
                  radius: 20,
                  title: "Spacing",
                  spacing: 40,
                  fontFamily: "Roboto",
                  iconData: Icons.access_time_sharp,
                  imageColor: Colors.green,
                  isElevated: true,
                  isContentWrapped: true,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {},
                ),
                const SizedBox(height: 8,),
                const Text("With icon only"),
                const SizedBox(height: 8,),
                // Creating a button with only an icon and specific icon size.
                CustomisedButton(
                  radius: 20,
                  iconData: Icons.access_alarm,
                  iconSize: 40,
                  imageColor: Colors.green,
                  isElevated: true,
                  isContentWrapped: true,
                  alignment: MainAxisAlignment.center,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

