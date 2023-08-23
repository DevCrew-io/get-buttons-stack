import 'package:flutter/material.dart';
import 'package:get_buttons_stack/src/utils/constants.dart'; // Importing constants from another file.

/// A custom button widget that displays the Google logo and allows users to sign in with Google.
class GoogleSignInButton extends StatelessWidget {
  // Properties to customize the button appearance and behavior.
  final String title; // The title or label of the button.
  final bool isCaps; // Flag to indicate if the title should be displayed in all uppercase letters.
  final double radius; // The corner radius of the button.
  final double? width; // The optional width of the button.
  final bool isDark; // Flag to indicate if the button should have a dark theme.
  final double height; // The height of the button.
  final bool isContentWrapped; // Flag to indicate if the content of the button should be wrapped.
  final VoidCallback onPressed; // Callback function to be executed when the button is pressed.

  const GoogleSignInButton({
    Key? key,
    this.title = "Sign in with Google",
    this.isCaps = false,
    this.radius = 0,
    this.width,
    this.isDark = false,
    this.height = 40,
    this.isContentWrapped = true,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determine text color based on the dark theme setting.
    final textColor = isDark ? Colors.white : const Color(0xFF000000).withOpacity(0.54);
    // Determine background color based on the dark theme setting.
    final bgColor = isDark ? const Color(0xFF4285F4) : const Color(0xFFFFFFFF);

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          foregroundColor: textColor,
          backgroundColor: bgColor,
          padding: const EdgeInsets.symmetric(horizontal: 0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 1.5, right: 8),
          child: Row(
            mainAxisSize: isContentWrapped ? MainAxisSize.min : MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Display Google logo image in a container with controlled opacity.
              Container(
                height: height - 3,
                width: height - 3,
                color: Colors.white.withOpacity(isDark ? 1.0 : 0.0),
                child: const Image(
                  image: AssetImage(
                    ImagePath.googleLogo,
                    package: 'get_buttons_stack',
                  ),
                ),
              ),
              const SizedBox(width: 8),
              // Display button title.
              Text(
                isCaps ? title.toUpperCase() : title,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}