import 'package:flutter/material.dart';
import '../utils/constants.dart';

enum ButtonColorTheme {
  blueWithWhite,
  whiteWithBlue,
  blackWithWhite,
  whiteWithBlack,
}

class FacebookSignButton extends StatelessWidget {
  final String title;
  final bool inCaps;
  final double radius;
  final double? width;
  final double height;
  final bool isContentWrapped;
  final bool isTextOnly;
  final MainAxisAlignment alignment;
  final ButtonColorTheme buttonColorTheme;
  final VoidCallback onPressed;

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
          side: (buttonColorTheme == ButtonColorTheme.whiteWithBlack || buttonColorTheme == ButtonColorTheme.whiteWithBlue) ? BorderSide(color: foregroundColor, width: 1.0): null,
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
