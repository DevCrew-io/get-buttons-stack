import 'package:flutter/material.dart';

import 'constants.dart';

class FacebookSignButton extends StatelessWidget {
  final String title;
  final bool inCaps;
  final double radius;
  final double? width;
  final double height;
  final bool contentWrapped;
  final MainAxisAlignment alignment;
  final VoidCallback onPressed;
  const FacebookSignButton({
    super.key,
    this.title = "Continue with Facebook",
    this.inCaps = false,
    this.radius = 0,
    this.width,
    this.height = 40,
    this.contentWrapped = true,
    this.alignment = MainAxisAlignment.start,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius)
              ),
              foregroundColor: Colors.white,
              backgroundColor: const Color(0XFF2474f2),
            padding: const EdgeInsets.symmetric(horizontal: 0)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisSize: contentWrapped ? MainAxisSize.min : MainAxisSize.max,
              mainAxisAlignment: alignment,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: const AssetImage(ImagePath.fbLogo, package: 'get_buttons_stack'), width: (60/100*height).floorToDouble(), height: (60/100*height).floorToDouble(), fit: BoxFit.fill,),
                const SizedBox(width: 8,),
                Text(
                  inCaps ? title.toUpperCase() : title,
                  style: TextStyle(
                       fontSize: (40/100*height).floorToDouble(),
                       fontWeight: FontWeight.w600
                  ),
                )
              ],
            ),
          )),
    );
  }
}
