import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/navigator/drawer_nav.dart';
import 'package:flutter_boilerplate/screens/screens.dart';
import 'package:flutter_boilerplate/widgets/widgets.dart';

class TabsNavigator extends StatefulWidget {
  @override
  _TabsNavigatorState createState() => _TabsNavigatorState();
}

class _TabsNavigatorState extends State<TabsNavigator> {
  final List<Widget> _screens = [
    HomeScreen(),
    SettingScreen(),
    const WebviewScreen(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0 ? const MainAppBar('Home') : null,
      drawer: MainDrawer(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (i) => setState(() => _selectedIndex = i),
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.web_outlined),
            activeIcon: Icon(Icons.web),
            label: 'Web',
          ),
        ],
      ),
    );
  }
}
