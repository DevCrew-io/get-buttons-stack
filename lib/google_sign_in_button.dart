import 'package:flutter/material.dart';
import 'package:get_buttons_stack/constants.dart';

/// A custom button widget that displays the Google logo and allows users to sign in with Google.
class GoogleSignInButton extends StatelessWidget {
  /// The title or label of the button.
  final String title;

  /// Flag to indicate if the title should be displayed in all uppercase letters.
  final bool isCaps;

  /// The corner radius of the button.
  final double radius;

  /// The optional width of the button.
  final double? width;

  /// Flag to indicate if the button should have a dark theme.
  final bool isDark;

  /// The height of the button.
  final double height;

  /// Flag to indicate if the content of the button should be wrapped.
  final bool isContentWrapped;

  /// Callback function to be executed when the button is pressed.
  ///
  /// The [onPressed] parameter must not be null.
  final VoidCallback onPressed;


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
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          foregroundColor: isDark
              ? Colors.white
              : const Color(0XFF000000).withOpacity(0.54),
          backgroundColor: isDark
              ? const Color(0XFF4285F4)
              : const Color(0XFFFFFFFF),
          padding: const EdgeInsets.symmetric(horizontal: 0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 1.5, right: 8),
          child: Row(
            mainAxisSize:
            isContentWrapped ? MainAxisSize.min : MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Google logo container
              Container(
                height: (height - 3),
                width: (height - 3),
                color: Colors.white.withOpacity(isDark ? 1.0 : 0.0),
                child: const Image(
                  image: AssetImage(
                    ImagePath.googleLogo,
                    package: 'get_buttons_stack',
                  ),
                ),
              ),
              const SizedBox(width: 8,),
              // Text label
              Text(
                isCaps ? title.toUpperCase() : title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
