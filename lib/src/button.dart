import 'package:flutter/material.dart';

abstract class _Button extends StatelessWidget {
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

  const _Button({
    super.key,
    this.title,
    required this.radius,
    this.width,
    required this.height,
    this.fontSize,
    required this.backgroundColor,
    this.fontColor,
    this.imageColor,
  });
}

class MyButton extends _Button {
  const MyButton({
    super.key,
    required super.radius,
    required super.height,
    required super.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
