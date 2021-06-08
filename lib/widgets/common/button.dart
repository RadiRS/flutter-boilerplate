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
  final TextStyle? textStyle;

  const Button({
    Key? key,
    this.child,
    this.onPressed,
    this.type,
    this.label = "",
    this.style,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.Elevated:
        return ElevatedButton(
          onPressed: onPressed,
          child: _buildLabelText(),
          style: style ?? ElevatedButton.styleFrom(elevation: 0),
        );

      case ButtonType.Outline:
        return OutlinedButton(
          child: _buildLabelText(),
          onPressed: onPressed,
          style: style ?? ButtonStyle(),
        );

      case ButtonType.Text:
        return TextButton(
          child: _buildLabelText(),
          onPressed: onPressed,
          style: style ?? ButtonStyle(),
        );

      default:
        return TextButton(
          child: _buildLabelText(),
          onPressed: onPressed,
          style: style ?? ButtonStyle(),
        );
    }
  }

  Text _buildLabelText() => Text(label, style: textStyle);
}
