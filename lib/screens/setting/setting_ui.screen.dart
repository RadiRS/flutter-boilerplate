import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/widgets/widgets.dart';

class SettingScreen extends StatelessWidget {
  static String routeName = '/setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar('Setting'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImgIcon(
                  ImageIcons.camera,
                  size: 30,
                ),
                LoadingIndicator()
              ],
            )
          ],
        ),
      ),
    );
  }
}
