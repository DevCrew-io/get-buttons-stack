import 'package:flutter/material.dart';

import '../utils/constants.dart';

/// A custom button widget that displays the Microsoft logo and allows users to sign in.
class MicrosoftSignInButton extends StatelessWidget {
  /// The corner radius of the button.
  final double radius;

  /// The optional width of the button.
  final double? width;

  /// Flag to indicate if the button should have a dark theme.
  final bool isDark;

  /// Flag to indicate if the button should be short form.
  final bool isShortForm;

  /// The alignment of the button's content.
  final MainAxisAlignment alignment;

  /// Flag to indicate if the content of the button should be wrapped.
  final bool isContentWrapped;

  /// Flag to indicate if the button border should be enabled.
  final bool isBorderEnabled;

  /// The height of the button.
  final double height;

  /// The isCaps of the button.
  final bool isCaps;

  /// Callback function to be executed when the button is pressed.
  final VoidCallback onPressed;

  /// Creates a [MicrosoftSignInButton].
  ///
  /// The [radius], [isDark], [isShortened], [alignment], [isContentWrapped],
  /// [isBorderEnabled], [height], and [onPressed] parameters must not be null.
  const MicrosoftSignInButton({
    Key? key,
    this.radius = 0,
    this.width,
    this.isDark = false,
    this.isShortForm = false,
    this.alignment = MainAxisAlignment.center,
    this.isContentWrapped = true,
    this.isBorderEnabled = false,
    this.height = 41.0,
    this.isCaps = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          side: isBorderEnabled
              ? const BorderSide(
                  width: 1.5,
                  color: Color(0XFF8C8C8C),
                )
              : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          foregroundColor: isDark ? Colors.white : const Color(0XFF5E5E5E),
          backgroundColor:
              isDark ? const Color(0XFF2F2F2F) : const Color(0XFFFFFFFF),
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
              // Microsoft logo image
              const Image(
                image:
                    AssetImage(ImagePath.msLogo, package: 'get_buttons_stack'),
              ),
              const SizedBox(width: 12,),
              // Text label
              Text(
                // ignore: unrelated_type_equality_checks
                isShortForm
                    ? (isCaps == true ? "Sign in".toUpperCase() : "Sign in")
                    : (isCaps == true
                        ? "Sign in with Microsoft".toUpperCase()
                        : "Sign in with Microsoft"),
                style: const TextStyle(
                  fontFamily: "Segoe UI",
                  fontSize: 15,
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
