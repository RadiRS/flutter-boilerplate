import 'package:flutter/material.dart';

enum ButtonType {
  Text,
  Outline,
  Elevated,
}

class Button extends StatelessWidget {
  final Widget? child;
  final void Function()? onPressed;
  final ButtonType? type;
  final String label;
  final ButtonStyle? style;

  const Button({
    Key? key,
    this.child,
    this.onPressed,
    this.type,
    this.label = "",
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.Elevated:
        return ElevatedButton(
          onPressed: onPressed,
          child: Text(label),
          style: style ?? ElevatedButton.styleFrom(elevation: 0),
        );

      case ButtonType.Outline:
        return OutlinedButton(
          child: Text(label),
          onPressed: onPressed,
          style: style ?? ButtonStyle(),
        );

      case ButtonType.Text:
        return TextButton(
          child: Text(label),
          onPressed: onPressed,
          style: style ?? ButtonStyle(),
        );

      default:
        return TextButton(
          child: Text(label),
          onPressed: onPressed,
        );
    }
  }
}
