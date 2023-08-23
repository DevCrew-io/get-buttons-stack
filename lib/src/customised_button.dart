import 'package:flutter/material.dart';
import 'package:get_buttons_stack/src/button.dart';

class CustomisedButton extends Button {
  const CustomisedButton({
    Key? key,
    String? title,
    double radius = 0,
    double? width,
    double height = 40,
    double fontSize = 15,
    Color backgroundColor = Colors.white,
    Color fontColor = Colors.black,
    Color? imageColor,
    bool isElevated = true,
    double spacing = 12,
    String? fontFamily,
    MainAxisAlignment alignment = MainAxisAlignment.start,
    bool isBorderEnabled = false,
    Color? borderColor = Colors.transparent,
    double? borderWidth,
    FontWeight fontWeight = FontWeight.w500,
    double iconSize = 20,
    bool isContentWrapped = false,
    IconData? iconData,
    String? imagePath,
    double horizontalPadding = 12,
    required VoidCallback onPressed,
  })  : assert(iconData == null || imagePath == null,
  "You cannot pass both arguments at once"),
        super(
        key: key,
        title: title,
        radius: radius,
        width: width,
        height: height,
        fontSize: fontSize,
        backgroundColor: backgroundColor,
        fontColor: fontColor,
        imageColor: imageColor,
        isElevated: isElevated,
        spacing: spacing,
        fontFamily: fontFamily,
        alignment: alignment,
        isBorderEnabled: isBorderEnabled,
        borderColor: borderColor,
        borderWidth: borderWidth,
        fontWeight: fontWeight,
        iconSize: iconSize,
        isContentWrapped: isContentWrapped,
        iconData: iconData,
        imagePath: imagePath,
        horizontalPadding: horizontalPadding,
        onPressed: onPressed,
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: isElevated ? null : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: isBorderEnabled
                ? BorderSide(
                width: borderWidth ?? 0, color: borderColor ?? Colors.black)
                : BorderSide.none,
          ),
          foregroundColor: fontColor,
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 0),
          child: Row(
            mainAxisSize: isContentWrapped ? MainAxisSize.min : MainAxisSize.max,
            mainAxisAlignment: alignment,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (iconData != null)
                Icon(
                  iconData,
                  size: iconSize,
                  color: imageColor,
                ),
              if (imagePath != null)
                Image(
                  width: iconSize,
                  height: iconSize,
                  fit: BoxFit.fill,
                  image: AssetImage(imagePath!),
                  color: imageColor,
                ),
              if (title != null && (iconData != null || imagePath != null))
                SizedBox(width: spacing),
              Text(
                title ?? "",
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  fontFamily: fontFamily,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
