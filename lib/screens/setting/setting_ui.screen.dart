import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static String routeName = '/setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Center(
        child: Text('Setting Screen'),
      ),
    );
  }
}
