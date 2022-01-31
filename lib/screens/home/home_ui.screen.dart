import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/navigator/drawer_nav.dart';
import 'package:flutter_boilerplate/services/local_notification_service.dart';
import 'package:flutter_boilerplate/widgets/widgets.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar('Home'),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            _buildSection(
              'Local Notification',
              children: [
                Button(
                  type: ButtonType.elevated,
                  label: 'Simple Notification',
                  onPressed: () async {
                    final RemoteMessage message = RemoteMessage(
                      title: 'Test Title',
                      body: 'Test Body',
                      notification: '',
                    );

                    await LocalNotificationService.show(message);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, {required List<Widget> children}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.blueGrey),
      ),
      child: Column(
        children: [
          UiText(text: title),
          ...children.toList(),
        ],
      ),
    );
  }
}
