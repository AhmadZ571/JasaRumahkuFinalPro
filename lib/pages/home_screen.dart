import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jasarumahku/pages/Aactivity/activityapp.dart';
import 'package:jasarumahku/pages/accprofile/profileacc.dart';
import 'package:jasarumahku/pages/wallet/wallet.dart';
// ignore: unused_import
import 'package:jasarumahku/pages/servis_ac/service_ac.dart';

import 'home/home_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  List<Map<String, dynamic>> AdItems = [
    {"id": 1, "image_path": 'assets/images/ads/adslide1.png'},
    {"id": 2, "image_path": 'assets/images/ads/adslide2.png'},
    {"id": 3, "image_path": 'assets/images/ads/adslide3.jpeg'},
  ];
  int AdIndex = 0;
  int currentAdIndex = 0;
  final CarouselController carouselController = CarouselController();

  int _currentIndex = 0;

  late final List<Widget> tabs;

  @override
  void initState() {
    super.initState();

    tabs = [
      HomePageSection(
        currentAdIndex: currentAdIndex,
        carouselController: carouselController,
        adItems: AdItems,
      ),

      //Activity Page
      activityapp(),

      //Wallet Page
      wallet(),

      //Message Page
      Center(
        child: Text('Message'),
      ),

      //Account Page
      ProfileAcc()
    ];
  }

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: signUserOut, icon: Icon(Icons.logout)),
        ],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(color: Colors.red),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: 'Aktivitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Dompet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_sharp),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
