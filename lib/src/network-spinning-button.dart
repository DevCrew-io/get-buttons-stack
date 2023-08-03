import 'package:flutter/material.dart';

// Enum representing the states of the button.
enum ButtonState { idle, spinning }

// Custom widget for a network spinning button.
class NetworkSpinningButton extends StatefulWidget {
  // Current state of the button, initialized to 'idle'.
  ButtonState _state = ButtonState.idle; //pass it as argument

  // The title or label of the button.
  final String? title;
  final String? loadingText;

  // The corner radius of the button.
  final double radius;

  // The optional width of the button.
  final double? width;

  // The height of the button.
  final double height;

  // The font size of the title text.
  final double? fontSize;

  // The background color of the button.
  final Color backgroundColor;

  // The font color of the title text.
  final Color? fontColor;

  // The color of the icon/image inside the button.
  final Color? imageColor;

  // Flag to indicate if the button should be elevated.
  final bool isElevated;

  // The font family of the title text.
  final String? fontFamily;

  // The spacing between icon/image and text label.
  final double? spacing;

  // The color of the spinner (loading indicator).
  final Color spinnerColor;

  // The width of the spinner's stroke.
  final double spinnerWidth;

  // The background color of the spinner.
  final Color? spinnerBackgroundColor;

  // The alignment of the button's content.
  final MainAxisAlignment alignment;

  // Flag to indicate if the button should have a border.
  final bool isBorderEnabled;

  // The font weight of the title text.
  final FontWeight fontWeight;

  // The size of the icon in the button.
  final double? iconSize;

  // Flag to indicate if the content of the button should be wrapped.
  final bool isContentWrapped;

  // The icon to be displayed in the button.
  final IconData? icon;

  // The path of the image to be displayed in the button.
  final String? imagePath;

  // Callback function when the button is pressed.
  final Function(Function(ButtonState state) changeState, ButtonState btnState) onPressed;

  // Constructor for the NetworkSpinningButton.
  NetworkSpinningButton({
    this.title,
    this.loadingText = "Loading...",
    this.radius = 0,
    this.width,
    this.height = 40,
    this.fontSize = 15,
    this.backgroundColor = Colors.white,
    this.fontColor = Colors.black,
    this.imageColor,
    this.isElevated = true,
    this.fontFamily,
    this.spacing = 8,
    this.spinnerColor = Colors.black,
    this.spinnerWidth = 3.0,
    this.spinnerBackgroundColor,
    this.alignment = MainAxisAlignment.start,
    this.isBorderEnabled = false,
    this.fontWeight = FontWeight.w500,
    this.iconSize = 20,
    this.isContentWrapped = true,
    this.icon,
    this.imagePath,
    required this.onPressed,
    super.key,
  });

  @override
  State<NetworkSpinningButton> createState() => _NetworkSpinningButtonState();
}

// State class for the NetworkSpinningButton.
class _NetworkSpinningButtonState extends State<NetworkSpinningButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Setting the width of the button based on the 'contentWrapped' property.
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        onPressed: () {
          // Check if the button is in 'idle' state before triggering onPressed callback.
          if (widget._state == ButtonState.idle) {
            widget.onPressed((state) => changeState(state), widget._state);
          }
        },
        style: ButtonStyle(
          // Setting overlay color to transparent if the button is in 'spinning' state to avoid visual artifacts.
          overlayColor: widget._state == ButtonState.idle
              ? null
              : MaterialStatePropertyAll<Color>(widget.backgroundColor.withOpacity(0.0)),
          // Setting elevation to null if 'isElevated' is false to remove the button shadow.
          elevation: widget.isElevated ? null : MaterialStateProperty.all<double>(4),
          // Applying rounded border to the button if 'isBorderEnabled' is true.
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.radius),
            ),
          ),
          // Applying border to the button if 'isBorderEnabled' is true.
          side: widget.isBorderEnabled
              ? MaterialStatePropertyAll<BorderSide>(
            BorderSide(width: 1.5, color: widget.fontColor ?? Colors.black),
          )
              : null,
          // Setting the font color of the button's text.
          foregroundColor: MaterialStatePropertyAll<Color>(widget.fontColor!),
          // Setting the background color of the button.
          backgroundColor: MaterialStatePropertyAll<Color>(widget.backgroundColor),
          // Setting padding to remove extra horizontal space inside the button.
          padding: const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            // Aligning the content based on the 'isContentWrapped' property.
            mainAxisSize: widget.isContentWrapped ? MainAxisSize.min : MainAxisSize.max,
            mainAxisAlignment: widget.alignment,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // GitHub logo icon or spinner based on the button state.
              Row(
                children: [
                  // If the button is in 'idle' state, show an empty container.
                  // If it's in 'spinning' state, show a CircularProgressIndicator.
                  widget._state == ButtonState.idle
                      ? Container()
                      : SizedBox(
                    width: widget.iconSize,
                    height: widget.iconSize,
                    child: CircularProgressIndicator(
                      // Optional parameters you can customize:
                      value: null, // If you want to show progress, set a value between 0 and 1. Here null value is set as this behave like continuous animating progress
                      strokeWidth: widget.spinnerWidth,
                      backgroundColor: widget.spinnerBackgroundColor,
                      valueColor: AlwaysStoppedAnimation<Color>(widget.spinnerColor),
                    ),
                  ),
                  // If the button is in 'idle' state, show the icon or image (if available), else show an empty container.
                  widget._state == ButtonState.idle
                      ? (widget.icon == null
                      ? Container()
                      : Icon(widget.icon, size: widget.iconSize, color: widget.imageColor))
                      : Container(),
                  widget._state == ButtonState.idle
                      ? (widget.imagePath == null
                      ? Container()
                      : Image(
                    width: widget.iconSize,
                    height: widget.iconSize,
                    fit: BoxFit.fill,
                    image: AssetImage(widget.imagePath ?? ""),
                    color: widget.imageColor,
                  ))
                      : Container(),
                  // If the title is provided, show it with optional spacing from the icon/image.
                  widget.title == null
                      ? Container()
                      : Row(
                    children: [
                      // If there's an icon or image, add spacing before the text label.
                      (widget.icon == null && widget.imagePath == null)
                          ? Container()
                          : SizedBox(width: widget.spacing),
                      // Text label
                      Text(
                        widget._state == ButtonState.idle ? widget.title ?? "" : widget.loadingText ?? "",
                        style: TextStyle(
                          fontSize: widget.fontSize,
                          fontWeight: widget.fontWeight,
                          fontFamily: widget.fontFamily,
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

  // Function to change the state of the button.
  void changeState(ButtonState state) {
    setState(() {
      widget._state = state;
    });
  }
}
