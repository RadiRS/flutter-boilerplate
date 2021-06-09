import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Color? backgroundColor;
  final List<Widget>? actions;

  const MainAppBar(
    this.title, {
    Key? key,
    this.backgroundColor,
    this.actions,
  });

  // Overide the size height of AppBar
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: backgroundColor,
      actions: actions,
    );
  }
}
