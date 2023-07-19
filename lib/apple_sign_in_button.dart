import 'package:flutter/material.dart';

import 'constants.dart';

class AppleSignInButton extends StatelessWidget {
  final String title;
  final double radius;
  final double? width;
  final bool isDark;
  final bool withBorder;
  final MainAxisAlignment alignment;
  final bool contentWrapped;
  final double? fontSize;
  final bool isCapitalised;
  final double? iconSize;
  final double height;
  final VoidCallback onPressed;
  const AppleSignInButton({
    super.key,
    this.title = "Sign in with Apple",
    this.radius = 4,
    this.width,
    this.isDark = false,
    this.withBorder = false,
    this.alignment = MainAxisAlignment.start,
    this.contentWrapped = true,
    this.fontSize,
    this.isCapitalised = false,
    this.iconSize,
    this.height = 44,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: contentWrapped ? null : width,
      height: height,
      child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
              side: (isDark == true && withBorder == true) ?  const BorderSide(
                  width: 1.0,
                  color: Color(0XFF000000)
              ) : null,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              foregroundColor: isDark ? Colors.black : Colors.white,
              backgroundColor: isDark ? Colors.white : Colors.black,
              ///
              padding: const EdgeInsets.symmetric(horizontal: 0)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisSize: contentWrapped ? MainAxisSize.min : MainAxisSize.max,
              mainAxisAlignment: alignment,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Image(
                  width: iconSize ?? (54/100*height).floorToDouble(),
                  height: iconSize ?? (54/100*height).floorToDouble(),
                  image: AssetImage(isDark ? ImagePath.appleLogoDark : ImagePath.appleLogoLight, package: 'get_buttons_stack'),
                  fit: BoxFit.fill,
                ),
                const SizedBox(width: 12,),
                Text(isCapitalised ? title.toUpperCase() : title,
                  style: TextStyle(
                    /// fdsdfd
                     fontSize: (43/100 * height).floorToDouble(),
                     fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
          )),
    );
  }
}