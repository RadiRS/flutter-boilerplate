import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final double size;
  final Color? color;
  final Color? backgroundColor;
  final String text;
  final bool isText;

  const LoadingIndicator({
    Key? key,
    this.size = 30,
    this.color,
    this.backgroundColor,
    this.text = 'Fetching data, please wait...',
    this.isText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isText
          ? Text(text)
          : SizedBox(
              width: size,
              height: size,
              child: CircularProgressIndicator(
                color: color,
                backgroundColor: backgroundColor,
              ),
            ),
    );
  }
}
