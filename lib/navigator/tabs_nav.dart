import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/navigator/drawer_nav.dart';
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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey(); // Create a key

  void onPressDrawerMenu() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.only(left: 16),
          child: Image.asset('assets/images/logo/app-logo.png'),
        ),
        leadingWidth: double.infinity,
        actions: [
          IconButton(
            onPressed: () {},
            color: Colors.blue,
            icon: Icon(Icons.notifications_none),
          ),
          IconButton(
            onPressed: onPressDrawerMenu,
            color: Colors.blue,
            icon: Icon(Icons.menu),
          )
        ],
      ),
      body: _screens[_selectedIndex],
      endDrawer: MainDrawer(),
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
