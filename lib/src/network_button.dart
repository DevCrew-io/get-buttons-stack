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
    final bool isSpinning = buttonState == ButtonState.spinning;

    // Spinner widget
    final Widget spinner = SizedBox(
      width: iconSize,
      height: iconSize,
      child: CircularProgressIndicator(
        value: null,
        strokeWidth: spinnerWidth,
        backgroundColor: spinnerBackgroundColor,
        valueColor: AlwaysStoppedAnimation<Color>(spinnerColor),
      ),
    );

    // Icon or image widget
    final Widget iconOrImage = isSpinning
        ? Container()
        : (iconData != null
            ? Icon(iconData!, size: iconSize, color: imageColor)
            : (imagePath != null
                ? Image(
                    width: iconSize,
                    height: iconSize,
                    fit: BoxFit.fill,
                    image: AssetImage(imagePath!),
                    color: imageColor,
                  )
                : Container()));

    // Text widget
    final Widget textWidget = Text(
      isSpinning ? (loadingText ?? "") : (title ?? ""),
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );

    final double space = isSpinning
        ? spacing
        : (((imagePath != null || iconData != null) && title != null)
            ? spacing
            : 0);

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          overlayColor: isSpinning
              ? MaterialStatePropertyAll<Color>(
                  backgroundColor.withOpacity(0.0))
              : null,
          elevation: isElevated ? null : MaterialStateProperty.all<double>(4),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
          side: isBorderEnabled
              ? MaterialStatePropertyAll<BorderSide>(
                  BorderSide(width: 1.5, color: fontColor ?? Colors.black),
                )
              : null,
          foregroundColor: MaterialStatePropertyAll<Color>(fontColor!),
          backgroundColor: MaterialStatePropertyAll<Color>(backgroundColor),
          padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 0)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 0),
          child: Row(
            mainAxisSize:
                isContentWrapped ? MainAxisSize.min : MainAxisSize.max,
            mainAxisAlignment: alignment,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  isSpinning ? spinner : Container(),
                  iconOrImage,
                  SizedBox(width: space),
                  textWidget,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
