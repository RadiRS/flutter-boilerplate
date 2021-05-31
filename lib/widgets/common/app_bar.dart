import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Color? backgroundColor;

  const MainAppBar(
    this.title, {
    Key? key,
    this.backgroundColor,
  });

  // Overide the size height of AppBar
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: false,
      elevation: 0,
      backgroundColor: backgroundColor,
    );
  }
}
