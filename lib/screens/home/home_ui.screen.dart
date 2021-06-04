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
            BalanceSummary(),
            Marketplaces(),
          ],
        ),
      ),
    );
  }
}

class Marketplaces extends StatelessWidget {
  const Marketplaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 3,
                height: 15,
                margin: EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
              Text('Peluang Terbaik')
            ],
          ),
          VSpace.sm,
          _buildCardMarketplace(),
          _buildCardMarketplace(),
          _buildCardMarketplace(),
        ],
      ),
    );
  }

  Card _buildCardMarketplace() {
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: 120,
            width: double.infinity,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(4),
                  ),
                  child: Image.network(
                    'http://placeimg.com/640/480',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  // Grade Information
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange[400],
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        child: Text('A',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 18,
                              color: Colors.red,
                            ),
                            HSpace.xs,
                            Text('11 hari Lagi'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Microsoft Office 2019',
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.w600,
                  ),
                ),
                VSpace.med,
                Container(
                  height: 5,
                  color: Colors.blueAccent,
                ),
                VSpace.sm,
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.green[200],
                    ),
                    HSpace.sm,
                    Text(
                      '63% Terkumpul - Rp 3.600.600',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                VSpace.sm,
                Divider(),
                VSpace.sm,
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nilai Pinjaman',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                VSpace.xs,
                                Text(
                                  'Rp 300.000.000',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jenis Pinjaman',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                VSpace.xs,
                                Text(
                                  'Invoice Financing',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    VSpace.med,
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tenor',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                VSpace.xs,
                                Text(
                                  '120 hari',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bunga Efektif',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                VSpace.xs,
                                Text(
                                  '15% p.a',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
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

class BalanceSummary extends StatelessWidget {
  const BalanceSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
