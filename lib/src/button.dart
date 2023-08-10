import 'package:flutter/material.dart';

abstract class Button extends StatelessWidget {
  /// The title or label of the button.
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
  final double spacing;
  final String? fontFamily;

  /// The alignment of the button's content.
  final MainAxisAlignment alignment;

  /// Flag to indicate if the button should have a border.
  final bool isBorderEnabled;

  /// The color of the border of button.
  final Color? borderColor;

  ///The width of button's border
  final double? borderWidth;

  /// The font weight of the title text.
  final FontWeight fontWeight;

  /// The size of the GitHub logo icon.
  final double? iconSize;

  /// Flag to indicate if the content of the button should be wrapped.
  final bool isContentWrapped;

  ///The iconData to show icon in button
  final IconData? iconData;

  ///The iconData to show icon in button
  final String? imagePath;

  /// Callback function to be executed when the button is pressed.
  ///
  /// The [onPressed] parameter must not be null.
  ///
  final VoidCallback onPressed;

  const Button({
    super.key,
    this.title,
    required this.radius,
    this.width,
    required this.height,
    this.fontSize,
    required this.backgroundColor,
    this.fontColor,
    this.imageColor,
    required this.isElevated,
    required this.spacing,
    this.fontFamily,
    required this.alignment,
    required this.isBorderEnabled,
    this.borderColor,
    this.borderWidth,
    required this.fontWeight,
    this.iconSize,
    required this.isContentWrapped,
    this.iconData,
    this.imagePath,
    required this.onPressed,
  });
}
