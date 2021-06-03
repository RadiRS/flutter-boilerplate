import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/navigator/drawer_nav.dart';
import 'package:flutter_boilerplate/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'home';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffebf0f3),
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
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
            color: Colors.blue,
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      endDrawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainMenu(),
            VSpace.xl,
            Container(
              width: double.infinity,
              child: GridView.count(
                // Remove scroll glow
                physics: ClampingScrollPhysics(),
                // Disabled scroll
                shrinkWrap: true,
                padding: EdgeInsets.all(12),
                childAspectRatio: 1.4,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                crossAxisCount: 2,
                children: [
                  _buildCardSummary(),
                  _buildCardSummary(),
                  _buildCardSummary(),
                  _buildCardSummary(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Card _buildCardSummary() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.monetization_on,
              color: Colors.orange[200],
            ),
            Expanded(child: Container()),
            Text(
              'Profit Diterima',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            Text(
              'Rp 10.000.000',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Welcome',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: ' Adjie,',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              VSpace(20),
              Text(
                'Dana Tersedia',
                style: TextStyle(fontSize: 12),
              ),
              VSpace.xs,
              Text(
                'Rp 100.900.000',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
              VSpace.xl,
            ],
          ),
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: -30,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: Colors.blue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton.icon(
                    icon: Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Deposit Dana',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    height: 30,
                    width: 1,
                    color: Colors.blueAccent,
                  ),
                  TextButton.icon(
                    icon: Icon(
                      Icons.gradient,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Mulai Mendanai',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
