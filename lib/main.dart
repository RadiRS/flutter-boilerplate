import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Boilerplate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: StarUpScreen.routeName,
      routes: {
        '/': (_) => HomeScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
      },
    );
  }
}
