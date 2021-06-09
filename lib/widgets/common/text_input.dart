import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boilerplate/theme/styles.dart';
// import 'package:flutter_boilerplate/theme/themes.dart';
import 'package:flutter_boilerplate/utils/string_utils.dart';
import 'package:flutter_boilerplate/widgets/common/ui_text.dart';
import 'package:flutter_boilerplate/widgets/widgets.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    Key? key,
    this.text,
    this.label = '',
    this.onChanged,
    this.onSubmit,
    this.onSaved,
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
    this.keyboardType,
    this.keyboardAppearance,
    this.textInputAction,
  }) : super(key: key);

  final String label;
  final String? text;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final int numLines;
  final int? maxLength;
  final void Function(String value)? onChanged;
  final void Function(String value)? onSubmit;
  final void Function(String? value)? onSaved;
  final String? hintText;
  final TextEditingController? controller;
  final List<String>? autofillHints;
  final bool obscureText;
  final bool autoFocus;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final Brightness? keyboardAppearance;
  final TextInputAction? textInputAction;

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    // AppTheme theme = context as AppTheme;

    final VisualDensity visualDensity = Theme.of(context).visualDensity;

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
          initialValue: widget.text,
          onFieldSubmitted: widget.onSubmit,
          onChanged: widget.onChanged,
          onSaved: widget.onSaved,
          autofocus: widget.autoFocus,
          minLines: widget.numLines,
          maxLines: widget.numLines,
          obscureText: widget.obscureText,
          keyboardType: widget.keyboardType,
          keyboardAppearance: widget.keyboardAppearance,
          textInputAction: widget.textInputAction ?? TextInputAction.next,
          style: widget.style ?? TextStyles.body2,
          decoration: widget.decoration ??
              InputDecoration(
                hintText: widget.hintText ?? '',
                enabledBorder: const OutlineInputBorder(
                  borderRadius: Corners.smBorder,
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: Corners.smBorder,
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
