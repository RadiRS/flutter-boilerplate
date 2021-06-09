import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boilerplate/navigator/routes.dart';
import 'package:flutter_boilerplate/screens/onboarding/onboarding_ui.screen.dart';
import 'package:flutter_boilerplate/theme/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_boilerplate/providers/providers.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Set Device Orientation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // Set Device Status Bar Style (Can't apply in here!)
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarIconBrightness: Brightness.dark,
    //   statusBarBrightness: Brightness.dark,
    //   statusBarColor: Colors.amberAccent, // android only
    // ));

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (_, theme, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Boilerplate',
            localizationsDelegates: [
              // AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: [
              const Locale('en', ''),
              const Locale('id', ''),
            ],
            themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
            theme: themeData(context),
            darkTheme: darkThemeData(context),
            initialRoute: OnboardingScreen.routeName,
            routes: routes,
          );
        },
      ),
    );
  }
}
