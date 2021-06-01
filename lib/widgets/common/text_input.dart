import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boilerplate/theme/styles.dart';
// import 'package:flutter_boilerplate/theme/themes.dart';
import 'package:flutter_boilerplate/utils/string_utils.dart';
import 'package:flutter_boilerplate/widgets/common/ui_text.dart';
import 'package:flutter_boilerplate/widgets/widgets.dart';

class LabeledTextInput extends StatefulWidget {
  const LabeledTextInput({
    Key? key,
    this.text,
    this.label = "",
    this.onChanged,
    this.onSubmit,
    this.style,
    this.labelStyle,
    this.numLines = 1,
    this.hintText,
    this.controller,
    this.autofillHints,
    this.obscureText = false,
    this.autoFocus = false,
    this.maxLength,
    this.decoration,
  }) : super(key: key);

  final String label;
  final String? text;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final int numLines;
  final int? maxLength;
  final void Function(String value)? onChanged;
  final void Function(String value)? onSubmit;
  final String? hintText;
  final TextEditingController? controller;
  final List<String>? autofillHints;
  final bool obscureText;
  final bool autoFocus;
  final InputDecoration? decoration;

  @override
  _LabeledTextInputState createState() => _LabeledTextInputState();
}

class _LabeledTextInputState extends State<LabeledTextInput> {
  @override
  Widget build(BuildContext context) {
    // AppTheme theme = context as AppTheme;

    VisualDensity visualDensity = Theme.of(context).visualDensity;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // label + spacing
        if (StringUtils.isNotEmpty(widget.label)) ...[
          UiText(
            text: widget.label,
            style: widget.labelStyle ?? TextStyles.caption,
          ),
          VSpace.med,
        ],
        // TextField
        TextFormField(
          controller: widget.controller,
          autofillHints: widget.autofillHints,
          inputFormatters: [
            LengthLimitingTextInputFormatter(widget.maxLength),
          ],
          onFieldSubmitted: widget.onSubmit,
          onChanged: widget.onChanged,
          initialValue: widget.text,
          style: widget.style ?? TextStyles.body2,
          autofocus: widget.autoFocus,
          minLines: widget.numLines,
          maxLines: widget.numLines,
          obscureText: widget.obscureText,
          decoration: widget.decoration ??
              InputDecoration(
                hintText: widget.hintText ?? "",
                enabledBorder: OutlineInputBorder(
                  borderRadius: Corners.smBorder,
                  borderSide: BorderSide(
                    // color: theme.greyWeak,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: Corners.smBorder,
                  borderSide: BorderSide(
                    // color: theme.accent1,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
                contentPadding: EdgeInsets.only(
                  left: Insets.med,
                  right: Insets.med,
                  top: Insets.lg + visualDensity.vertical * Insets.xs,
                  bottom: Insets.lg + visualDensity.vertical * Insets.xs,
                ),
                isDense: true,
              ),
        ),
      ],
    );
  }
}
