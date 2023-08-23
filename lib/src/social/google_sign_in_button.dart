import 'package:flutter/material.dart';
import 'package:get_buttons_stack/src/utils/constants.dart';

class GoogleSignInButton extends StatelessWidget {
  final String title;
  final bool isCaps;
  final double radius;
  final double? width;
  final bool isDark;
  final double height;
  final bool isContentWrapped;
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
    final textColor = isDark ? Colors.white : const Color(0xFF000000).withOpacity(0.54);
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
