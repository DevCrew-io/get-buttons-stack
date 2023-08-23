import 'package:flutter/material.dart';
import 'package:get_buttons_stack/src/button.dart';

// Enum representing the states of the button.
enum ButtonState { idle, spinning }

// Custom widget for a network spinning button.
class NetworkButton extends Button {
  final String? loadingText;
  final ButtonState buttonState;

  // The color of the spinner (loading indicator).
  final Color spinnerColor;

  // The width of the spinner's stroke.
  final double spinnerWidth;

  // The background color of the spinner.
  final Color? spinnerBackgroundColor;

  const NetworkButton({
    super.key,
    super.title,
    super.radius = 0,
    super.width,
    super.height = 40,
    super.fontSize = 15,
    super.backgroundColor = Colors.white,
    super.fontColor = Colors.black,
    super.imageColor,
    super.isElevated = true,
    super.fontFamily,
    super.alignment = MainAxisAlignment.start,
    super.spacing = 12,
    super.isBorderEnabled = false,
    super.fontWeight = FontWeight.w500,
    super.iconSize = 20,
    super.isContentWrapped = true,
    super.iconData,
    super.borderColor = Colors.transparent,
    super.borderWidth,
    super.imagePath,
    super.horizontalPadding = 12,
    required super.onPressed,
    this.loadingText = "Loading...",
    this.spinnerColor = Colors.black,
    this.spinnerWidth = 3.0,
    this.spinnerBackgroundColor,
    required this.buttonState,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Setting the width of the button based on the 'contentWrapped' property.
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          // Setting overlay color to transparent if the button is in 'spinning' state to avoid visual artifacts.
          overlayColor: buttonState == ButtonState.idle
              ? null
              : MaterialStatePropertyAll<Color>(
                  backgroundColor.withOpacity(0.0)),
          // Setting elevation to null if 'isElevated' is false to remove the button shadow.
          elevation: isElevated ? null : MaterialStateProperty.all<double>(4),
          // Applying rounded border to the button if 'isBorderEnabled' is true.
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
          // Applying border to the button if 'isBorderEnabled' is true.
          side: isBorderEnabled
              ? MaterialStatePropertyAll<BorderSide>(
                  BorderSide(width: 1.5, color: fontColor ?? Colors.black),
                )
              : null,
          // Setting the font color of the button's text.
          foregroundColor: MaterialStatePropertyAll<Color>(fontColor!),
          // Setting the background color of the button.
          backgroundColor: MaterialStatePropertyAll<Color>(backgroundColor),
          // Setting padding to remove extra horizontal space inside the button.
          padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 0)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 0),
          child: Row(
            // Aligning the content based on the 'isContentWrapped' property.
            mainAxisSize:
                isContentWrapped ? MainAxisSize.min : MainAxisSize.max,
            mainAxisAlignment: alignment,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // GitHub logo icon or spinner based on the button state.
              Row(
                children: [
                  // If the button is in 'idle' state, show an empty container.
                  // If it's in 'spinning' state, show a CircularProgressIndicator.
                  buttonState == ButtonState.idle
                      ? Container()
                      : SizedBox(
                          width: iconSize,
                          height: iconSize,
                          child: CircularProgressIndicator(
                            // Optional parameters you can customize:
                            value: null,
                            // If you want to show progress, set a value between 0 and 1. Here null value is set as this behave like continuous animating progress
                            strokeWidth: spinnerWidth,
                            backgroundColor: spinnerBackgroundColor,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(spinnerColor),
                          ),
                        ),
                  // If the button is in 'idle' state, show the icon or image (if available), else show an empty container.
                  buttonState == ButtonState.idle
                      ? (iconData == null
                          ? Container()
                          : Icon(iconData, size: iconSize, color: imageColor))
                      : Container(),
                  buttonState == ButtonState.idle
                      ? (imagePath == null
                          ? Container()
                          : Image(
                              width: iconSize,
                              height: iconSize,
                              fit: BoxFit.fill,
                              image: AssetImage(imagePath ?? ""),
                              color: imageColor,
                            ))
                      : Container(),
                  // If the title is provided, show it with optional spacing from the icon/image.
                  title == null
                      ? Container()
                      : Row(
                          children: [
                            // If there's an icon or image, add spacing before the text label.
                            (iconData == null && imagePath == null)
                                ? Container(width: buttonState == ButtonState.spinning ? (spacing ?? 8) : null)
                                : SizedBox(width: spacing),
                            // Text label
                            Text(
                              buttonState == ButtonState.idle
                                  ? title ?? ""
                                  : loadingText ?? "",
                              style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: fontWeight,
                                fontFamily: fontFamily,
                              ),
                            ),
                          ],
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
