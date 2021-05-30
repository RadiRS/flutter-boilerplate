import 'package:flutter/material.dart';

class StarUpScreen extends StatelessWidget {
  static String routeName = 'start-up';

  const StarUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Start Up'),
      ),
    );
  }
}
