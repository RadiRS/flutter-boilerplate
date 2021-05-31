import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/widgets/widgets.dart';

class SettingScreen extends StatelessWidget {
  static String routeName = '/setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImgIcon(
              ImageIcons.camera,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
