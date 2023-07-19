import 'package:flutter/material.dart';
import 'constants.dart';

class GithubSignInButton extends StatelessWidget {
  final String title;
  final double radius;
  final double? width;
  final double height;
  final double? fontSize;
  final Color backgroundColor;
  final Color? fontColor;
  final MainAxisAlignment alignment;
  final bool withBorder;
  final FontWeight fontWeight;
  final double iconSize;
  final bool contentWrapped;
  final VoidCallback onPressed;

  const GithubSignInButton(
      {super.key,
        this.title = "Sign in with Github",
        this.radius = 0,
        this.width,//double.infinity,
        this.height = 40,
        this.fontSize = 15,
        this.backgroundColor = Colors.white,
        this.fontColor = Colors.black,
        this.alignment = MainAxisAlignment.start,
        this.withBorder = false,
        this.fontWeight = FontWeight.w500,
        this.iconSize = 24,
        this.contentWrapped = false,
        required this.onPressed
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: contentWrapped == false ? width : null,
      height: height,
      child: ElevatedButton(
          onPressed: () {
            onPressed();
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              side: withBorder
                  ? BorderSide(width: 1.5, color: fontColor ?? Colors.black)
                  : null,
              foregroundColor: fontColor,
              backgroundColor: backgroundColor,
              padding: const EdgeInsets.symmetric(horizontal: 0)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisSize: contentWrapped ? MainAxisSize.min : MainAxisSize.max,
              mainAxisAlignment: alignment,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  width: iconSize,
                  height: iconSize,
                  fit: BoxFit.fill,
                  image: const AssetImage(ImagePath.githubLogoWhite,
                      package: 'get_buttons_stack'),
                  color: fontColor,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
                )
              ],
            ),
          )),
    );
  }
}
