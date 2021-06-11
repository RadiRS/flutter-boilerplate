import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/navigator/tabs_nav.dart';
import 'package:flutter_boilerplate/screens/onboarding/onboarding_ui.screen.dart';
import 'package:flutter_boilerplate/screens/screens.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/': (_) => TabsNavigator(),
  StarUpScreen.routeName: (_) => const StarUpScreen(),
  OnboardingScreen.routeName: (_) => OnboardingScreen(),
  HomeScreen.routeName: (_) => HomeScreen(),
  SettingScreen.routeName: (_) => SettingScreen(),
  SettingScreen.routeName: (_) => SettingScreen(),
  WebviewScreen.routeName: (_) => const WebviewScreen(),
  DeviceInfoScreen.routeName: (_) => DeviceInfoScreen(),
};

const String initialRoute = '/';
