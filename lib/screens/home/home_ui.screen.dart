import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(children: [
          Text('Flutter Boilerplate'),
          Text(AppLocalizations.of(context)!.helloWorld),
        ]),
      ),
    );
  }
}
