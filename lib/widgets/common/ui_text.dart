import 'package:flutter/material.dart';

// Extends SelectableText, providing default web-like behavior of a non-focuseable but selectable text region
class UiText extends StatefulWidget {
  final String? text;
  final TextSpan? span;
  final TextStyle? style;

  const UiText({
    Key? key,
    this.style,
    this.text,
    this.span,
  }) : super(key: key);

  @override
  _UiTextState createState() => _UiTextState();
}

class _UiTextState extends State<UiText> {
  final FocusNode _focusNode = FocusNode(skipTraversal: true);

  @override
  Widget build(BuildContext context) {
    if (widget.span != null) {
      return SelectableText.rich(
        widget.span!,
        style: widget.style,
        focusNode: _focusNode,
      );
    } else {
      return SelectableText(
        widget.text ?? '',
        style: widget.style,
        focusNode: _focusNode,
      );
    }
  }
}
