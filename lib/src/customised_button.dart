import 'package:flutter/material.dart';
import 'package:get_buttons_stack/src/utils/constants.dart';

class CustomisedButton extends StatelessWidget {
  /// The title or label of the button.
  final String? title;

  /// The corner radius of the button.
  final double radius;

  /// The optional width of the button.
  final double? width;

  /// The height of the button.
  final double height;

  /// The font size of the title text.
  final double? fontSize;

  /// The background color of the button.
  final Color backgroundColor;

  /// The font color of the title text.
  final Color? fontColor;

  final Color? imageColor;

  final bool isElevated;
  final String? fontFamily;

  /// The alignment of the button's content.
  final MainAxisAlignment alignment;

  /// Flag to indicate if the button should have a border.
  final bool isBorderEnabled;

  /// The font weight of the title text.
  final FontWeight fontWeight;

  /// The size of the GitHub logo icon.
  final double? iconSize;

  /// Flag to indicate if the content of the button should be wrapped.
  final bool isContentWrapped;

  final IconData? icon;
  final String? imagePath;
  /// Callback function to be executed when the button is pressed.
  ///
  /// The [onPressed] parameter must not be null.
  ///
  final VoidCallback onPressed;

  const CustomisedButton({
    Key? key,
    this.title,
    this.radius = 0,
    this.width,
    this.height = 40,
    this.fontSize = 15,
    this.backgroundColor = Colors.white,
    this.fontColor = Colors.black,
    this.imageColor,
    this.isElevated = true,
    this.fontFamily,
    this.alignment = MainAxisAlignment.start,
    this.isBorderEnabled = false,
    this.fontWeight = FontWeight.w500,
    this.iconSize,
    this.isContentWrapped = false,
    this.icon,
    this.imagePath,
    required this.onPressed,
  }) : assert(icon == null || imagePath == null, "You cannot pass both arguments at once"), super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Setting the width of the button based on the 'contentWrapped' property.
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          elevation: isElevated ? null : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          // Setting the button border if 'withBorder' is true.
          side: isBorderEnabled
              ? BorderSide(width: 1.5, color: fontColor ?? Colors.black)
              : null,
          foregroundColor: fontColor,
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            // Aligning the content based on the 'contentWrapped' property.
            mainAxisSize:
            isContentWrapped ? MainAxisSize.min : MainAxisSize.max,
            mainAxisAlignment: alignment,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // GitHub logo icon
              icon == null ? Container() : Icon(icon, size: iconSize, color: imageColor,),
              imagePath == null ? Container() :
              Image(
                width: iconSize,
                height: iconSize,
                fit: BoxFit.fill,
                image: AssetImage(
                  imagePath ?? ""
                ),
                color: imageColor,
              ),

              title == null ? Container() :
                  Row(
                    children: [
                      (icon == null && imagePath == null) ? Container() :
                      const SizedBox(
                        width: 12,
                      ),// Text label
                      Text(title ?? "",
                        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, fontFamily: fontFamily),
                      ),
                    ],
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
