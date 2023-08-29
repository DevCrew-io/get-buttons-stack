import 'package:flutter/material.dart';
import '../utils/constants.dart'; // Importing constants from another file.

// Enumeration for different color themes of the button.
enum ButtonColorTheme {
  blueWithWhite,
  whiteWithBlue,
  blackWithWhite,
  whiteWithBlack,
}

/// A custom button widget that displays the Facebook logo and allows users to sign in with Facebook.
class FacebookSignButton extends StatelessWidget {
  // Properties to customize the button appearance and behavior.
  final String title; // The title or label of the button.
  final bool inCaps; // Flag to indicate if the title should be displayed in all uppercase letters.
  final double radius; // The corner radius of the button.
  final double? width; // The optional width of the button.
  final double height; // The height of the button.
  final bool isContentWrapped; // Flag to indicate if the content of the button should be wrapped.
  final bool isTextOnly; // Flag to indicate if the button should display only text.
  final MainAxisAlignment alignment; // The alignment of the button's content.
  final ButtonColorTheme buttonColorTheme; // The color theme of the button.
  final VoidCallback onPressed; // Callback function to be executed when the button is pressed.

  const FacebookSignButton({
    Key? key,
    this.title = "Continue with Facebook",
    this.inCaps = false,
    this.radius = 0,
    this.width,
    this.height = 40,
    this.isContentWrapped = true,
    this.isTextOnly = false,
    this.buttonColorTheme = ButtonColorTheme.blueWithWhite,
    this.alignment = MainAxisAlignment.start,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determine the background and foreground colors based on the selected color theme.
    final (backgroundColor, foregroundColor) = _setColorTheme();

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          // Apply side border if the color theme is white with black or white with blue.
          side: (buttonColorTheme == ButtonColorTheme.whiteWithBlack || buttonColorTheme == ButtonColorTheme.whiteWithBlue) ? BorderSide(color: foregroundColor, width: 1.0) : null,
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisSize: isContentWrapped ? MainAxisSize.min : MainAxisSize.max,
            mainAxisAlignment: alignment,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Display Facebook logo image if not text-only button.
              if (!isTextOnly)
                Image(
                  image: const AssetImage(
                    ImagePath.fbLogo,
                    package: 'get_buttons_stack',
                  ),
                  color: foregroundColor,
                  width: (60 / 100 * height).floorToDouble(),
                  height: (60 / 100 * height).floorToDouble(),
                  fit: BoxFit.fill,
                ),
              SizedBox(width: isTextOnly ? 0 : 8),
              // Display text label.
              Text(
                inCaps ? title.toUpperCase() : title,
                style: TextStyle(
                  fontSize: (40 / 100 * height).floorToDouble(),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Set background and foreground colors based on the color theme.
  (Color, Color) _setColorTheme() {
    switch(buttonColorTheme) {
      case ButtonColorTheme.blueWithWhite:
        return (const Color(0XFF1877F2), Colors.white);
      case ButtonColorTheme.blackWithWhite:
        return (Colors.black, Colors.white);
      case ButtonColorTheme.whiteWithBlue:
        return (Colors.white, const Color(0XFF1877F2));
      case ButtonColorTheme.whiteWithBlack:
        return (Colors.white, Colors.black);
    }
  }
}
