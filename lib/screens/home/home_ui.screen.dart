import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/navigator/drawer_nav.dart';
import 'package:flutter_boilerplate/widgets/widgets.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar('Home'),
      drawer: MainDrawer(),
      body: Center(
        child: GestureDetector(
          onTap: () => Toaster.showToast(
            context,
            'Hello World',
            // AppLocalizations.of(context)!.helloWorld,
          ),
          // child: Text(AppLocalizations.of(context)!.helloWorld),
        ),
      ),
    );
  }
}
