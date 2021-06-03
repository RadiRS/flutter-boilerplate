import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/screens.dart';

class TabsNavigator extends StatefulWidget {
  @override
  _TabsNavigatorState createState() => _TabsNavigatorState();
}

class _TabsNavigatorState extends State<TabsNavigator> {
  final List<Widget> _screens = [
    HomeScreen(),
    SettingScreen(),
    SettingScreen(),
    SettingScreen(),
    SettingScreen(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.broken_image_outlined),
            activeIcon: Icon(Icons.broken_image),
            label: 'Portofolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.nature_outlined),
            activeIcon: Icon(Icons.nature),
            label: 'Peluang',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            activeIcon: Icon(Icons.wallet_giftcard_outlined),
            label: 'Dompet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'Lainnya',
          ),
        ],
      ),
    );
  }
}
