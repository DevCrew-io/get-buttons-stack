import 'package:flutter/material.dart';

import '../utils/constants.dart';

/// A custom button widget that displays the Facebook logo and allows users to sign in with Facebook.
class FacebookSignButton extends StatelessWidget {
  /// The title or label of the button.
  final String title;

  /// Flag to indicate if the title should be displayed in all uppercase letters.
  final bool inCaps;

  /// The corner radius of the button.
  final double radius;

  /// The optional width of the button.
  final double? width;

  /// The height of the button.
  final double height;

  /// Flag to indicate if the content of the button should be wrapped.
  final bool isContentWrapped;

  /// The alignment of the button's content.
  final MainAxisAlignment alignment;

  /// Callback function to be executed when the button is pressed.
  ///
  /// The [onPressed] parameter must not be null.

  final VoidCallback onPressed;

  const FacebookSignButton({
    Key? key,
    this.title = "Continue with Facebook",
    this.inCaps = false,
    this.radius = 0,
    this.width,
    this.height = 40,
    this.isContentWrapped = true,
    this.alignment = MainAxisAlignment.start,
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
          // Replace it with the logic to handle Facebook sign-in.
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          foregroundColor: Colors.white,
          backgroundColor: const Color(0XFF2474f2),
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
              // Facebook logo image
              Image(
                image: const AssetImage(
                  ImagePath.fbLogo,
                  package: 'get_buttons_stack',
                ),
                // to maintain size of icon of facebook with height of button's size i-e if height of button increases, icon will be set 60% of button's height
                width: (60 / 100 * height).floorToDouble(),
                height: (60 / 100 * height).floorToDouble(),
                fit: BoxFit.fill,
              ),
              const SizedBox(width: 8,),
              // Text label
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
}