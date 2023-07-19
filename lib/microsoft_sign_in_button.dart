import 'package:flutter/material.dart';

import 'constants.dart';

class MicrosoftSignInButton extends StatelessWidget {
  final double radius;
  final double? width;
  final bool isDark;
  final bool isShortend;
  final MainAxisAlignment alignment;
  final bool contentWrapped;
  final bool withBorder;
  final VoidCallback onPressed;
  const MicrosoftSignInButton({
    super.key,
    this.radius = 0,
    this.width,
    this.isDark = false,
    this.isShortend = false,
    this.alignment = MainAxisAlignment.center,
    this.contentWrapped = true,
    this.withBorder = false,
    required this.onPressed
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: contentWrapped ? null : width,
      height: 41.0,
      child: ElevatedButton(
          onPressed: (){
            onPressed();
          },
          style: ElevatedButton.styleFrom(
            side: withBorder ? const BorderSide(
              width: 1.5,
              color: Color(0XFF8C8C8C)
            ) : null,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius),
              ),
              foregroundColor: isDark ? Colors.white : const Color(0XFF5E5E5E),
              backgroundColor: isDark ? const Color(0XFF2F2F2F) : const Color(0XFFFFFFFF),
              padding: const EdgeInsets.symmetric(horizontal: 0)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisSize: contentWrapped ? MainAxisSize.min : MainAxisSize.max,
              mainAxisAlignment: alignment,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const Image(
                  image: AssetImage(ImagePath.msLogo, package: 'get_buttons_stack'),
                ),
                const SizedBox(width: 12,),
                Text(
                  isShortend ? "Sign in" : "Sign in with Microsoft",
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
          )),
    );
  }
}