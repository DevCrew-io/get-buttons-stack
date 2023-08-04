import 'package:flutter/material.dart';
import 'package:get_buttons_stack/src/button.dart';
import 'package:get_buttons_stack/src/utils/constants.dart';

class CustomisedButton extends Button {
  const CustomisedButton({
    Key? key,
    super.title,
    super.radius = 0,
    super.width,
    super.height = 40,
    super.fontSize = 15,
    super.backgroundColor = Colors.white,
    super.fontColor = Colors.black,
    super.imageColor,
    super.isElevated = true,
    super.spacing = 12,
    super.fontFamily,
    super.alignment = MainAxisAlignment.start,
    super.isBorderEnabled = false,
    super.borderColor = Colors.transparent,
    super.borderWidth,
    super.fontWeight = FontWeight.w500,
    super.iconSize = 20,
    super.isContentWrapped = false,
    super.iconData,
    super.imagePath,
    required super.onPressed,
  })  : assert(iconData == null || imagePath == null,
            "You cannot pass both arguments at once"),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Setting the width of the button based on the 'isContentWrapped' property.
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
              ? BorderSide(
                  width: borderWidth ?? 0, color: borderColor ?? Colors.black)
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
              iconData == null
                  ? Container()
                  : Icon(
                      iconData,
                      size: iconSize,
                      color: imageColor,
                    ),
              imagePath == null
                  ? Container()
                  : Image(
                      width: iconSize,
                      height: iconSize,
                      fit: BoxFit.fill,
                      image: AssetImage(imagePath ?? ""),
                      color: imageColor,
                    ),

              title == null
                  ? Container()
                  : Row(
                      children: [
                        (iconData == null && imagePath == null)
                            ? Container()
                            : SizedBox(
                                width: spacing,
                              ), // Text label
                        Text(
                          title ?? "",
                          style: TextStyle(
                              fontSize: fontSize,
                              fontWeight: fontWeight,
                              fontFamily: fontFamily),
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
