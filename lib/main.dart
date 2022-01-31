import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boilerplate/navigator/routes.dart';
import 'package:flutter_boilerplate/providers/providers.dart';
import 'package:flutter_boilerplate/services/local_notification_service.dart';
import 'package:flutter_boilerplate/theme/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocalNotificationService.initialize();

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
            initialRoute: initialRoute,
            routes: routes,
          );
        },
      ),
    );
  }
}
