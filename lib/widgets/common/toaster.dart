import 'package:flutter/material.dart';

class Toaster {
  static void showToast(BuildContext context, String content) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        duration: Duration(milliseconds: 1700),
        content: Container(
          padding: EdgeInsets.all(8),
          child: Text(content),
        ),
      ),
    );
  }
}
