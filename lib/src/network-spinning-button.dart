import 'package:flutter/material.dart';

enum ButtonState { idle, spinning }

class NetworkSpinningButton extends StatefulWidget {
  ButtonState state = ButtonState.idle;
  final Function(Function (ButtonState state)changeState, ButtonState btnState) onPressed;

  NetworkSpinningButton({required this.onPressed, super.key});

  @override
  State<NetworkSpinningButton> createState() => _NetworkSpinningButtonState();
}

class _NetworkSpinningButtonState extends State<NetworkSpinningButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
      onPressed: () =>
          widget.onPressed((state) => changeState(state), widget.state),
      child: widget.state == ButtonState.idle
          ? const Text("Test")
          : const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),

        color: Colors.amber,
            ),
    );
  }

  void changeState(ButtonState state) {

    setState(() {
      widget.state = state;
    });
  }
}
