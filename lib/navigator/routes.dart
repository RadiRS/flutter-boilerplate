import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/navigator/tabs_nav.dart';
import 'package:flutter_boilerplate/screens/screens.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (_) => TabsNavigator(),
  StarUpScreen.routeName: (_) => StarUpScreen(),
  HomeScreen.routeName: (_) => HomeScreen(),
};
