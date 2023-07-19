
import 'package:flutter/material.dart';
import 'package:get_buttons_stack/constants.dart';

class GoogleSignInButton extends StatelessWidget {
  final String title;
  final bool inCaps;
  final double radius;
  final double? width;
  final bool isDark;
  final double height;
  final bool contentWrapped;
  final VoidCallback onPressed;
  const GoogleSignInButton({
    super.key,
    this.title = "Sign in with Google",
    this.inCaps = true,
    this.radius = 0,
    this.width,
    this.isDark = false,
    this.height = 40,
    this.contentWrapped = true,
    required this.onPressed
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: contentWrapped == false ? width : null,
      height: height,
      child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius)
            ),
              foregroundColor: isDark ? Colors.white : const Color(0XFF000000).withOpacity(0.54),
              backgroundColor: isDark ? const Color(0XFF4285F4) : const Color(0XFFFFFFFF),
              padding: const EdgeInsets.symmetric(horizontal: 0)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 1.5, right: 8),
            child: Row(
              mainAxisSize: contentWrapped ? MainAxisSize.min : MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: (height - 3),
                  width: (height - 3),
                  color: Colors.white.withOpacity(isDark ? 1.0 : 0.0),
                  child: const Image(
                      image: AssetImage(ImagePath.googleLogo, package: 'get_buttons_stack'),
                  ),
                ),
                const SizedBox(width: 8,),
                Text(
                  title,
                  style: TextStyle(
                     fontSize: 14,
                     fontWeight: FontWeight.w600
                  ),
                )
        ],
      ),
          )),
    );
  }
}
