import 'package:flutter/material.dart';

enum ButtonType {
  text,
  outline,
  elevated,
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
    this.label = '',
    this.style,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.elevated:
        return ElevatedButton(
          onPressed: onPressed,
          style: style ?? ElevatedButton.styleFrom(elevation: 0),
          child: _buildLabelText(),
        );

      case ButtonType.outline:
        return OutlinedButton(
          onPressed: onPressed,
          style: style ?? const ButtonStyle(),
          child: _buildLabelText(),
        );

      case ButtonType.text:
        return TextButton(
          onPressed: onPressed,
          style: style ?? const ButtonStyle(),
          child: _buildLabelText(),
        );

      default:
        return TextButton(
          onPressed: onPressed,
          style: style ?? const ButtonStyle(),
          child: _buildLabelText(),
        );
    }
  }

  Text _buildLabelText() => Text(label, style: textStyle);
}
