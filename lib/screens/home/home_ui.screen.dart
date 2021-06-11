import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => Toaster.showToast(context, 'Hello World'),
          child: const Text('Hello World'),
        ),
      ),
    );
  }
}
