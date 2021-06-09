import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/screens.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: const Text(
              'Drawer Menu!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          buildListTile('Home', Icons.home, () {
            Navigator.pushNamed(context, '/');
          }),
          buildListTile('Setting', Icons.settings, () {
            Navigator.pushNamed(context, SettingScreen.routeName);
          }),
        ],
      ),
    );
  }

  ListTile buildListTile(String title, IconData icon, Function()? tabHandler) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      // onTap: () => null,
      onTap: tabHandler,
    );
  }
}
