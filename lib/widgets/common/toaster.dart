import 'package:flutter/material.dart';

mixin Toaster {
  static void showToast(BuildContext context, String content) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        duration: const Duration(milliseconds: 1700),
        content: Container(
          padding: const EdgeInsets.all(8),
          child: Text(content),
        ),
      ),
    );
  }
}
