import 'package:flutter/material.dart';

import 'constants.dart';

/// A custom button widget that displays the Apple logo and allows users to sign in with Apple.
class AppleSignInButton extends StatelessWidget {
  /// The title or label of the button.
  final String title;

  /// The corner radius of the button.
  final double radius;

  /// The optional width of the button.
  final double? width;

  /// Flag to indicate if the button should have a dark theme.
  final bool isDark;

  /// Flag to indicate if the button should have a border.
  final bool isBorderedEnabled;

  /// The alignment of the button's content.
  final MainAxisAlignment alignment;

  /// Flag to indicate if the content of the button should be wrapped.
  final bool isContentWrapped;

  /// The font size of the title text.
  final double? fontSize;

  /// Flag to indicate if the title should be displayed in all uppercase letters.
  final bool isCaps;

  /// The size of the Apple logo icon.
  final double? iconSize;

  /// The height of the button.
  final double height;

  /// Callback function to be executed when the button is pressed.
  ///
  /// The [onPressed] parameter must not be null.

  final VoidCallback onPressed;

  const AppleSignInButton({
    Key? key,
    this.title = "Sign in with Apple",
    this.radius = 4,
    this.width,
    this.isDark = false,
    this.isBorderedEnabled = false,
    this.alignment = MainAxisAlignment.start,
    this.isContentWrapped = true,
    this.fontSize,
    this.isCaps = false,
    this.iconSize,
    this.height = 44,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {
          // This onPressed callback is currently empty.
          // Replace it with the logic to handle Apple sign-in.
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          side: (isDark == true && isBorderedEnabled == true)
              ? const BorderSide(
            width: 1.0,
            color: Color(0XFF000000),
          )
              : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          foregroundColor: isDark ? Colors.black : Colors.white,
          backgroundColor: isDark ? Colors.white : Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisSize:
            isContentWrapped ? MainAxisSize.min : MainAxisSize.max,
            mainAxisAlignment: alignment,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Apple logo icon
              Image(
                width: iconSize ?? (54 / 100 * height).floorToDouble(),
                height: iconSize ?? (54 / 100 * height).floorToDouble(),
                image: AssetImage(
                  isDark
                      ? ImagePath.appleLogoDark
                      : ImagePath.appleLogoLight,
                  package: 'get_buttons_stack',
                ),
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 12,),
              // Text label
              Text(
                isCaps ? title.toUpperCase() : title,
                style: TextStyle(
                  fontSize: (43 / 100 * height).floorToDouble(),
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
