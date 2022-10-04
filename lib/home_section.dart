import 'package:flutter/material.dart';
import 'package:oraan_flutter/views/home_screen/home_screen.dart';
import 'package:oraan_flutter/views/ocs_screen.dart';
import 'package:oraan_flutter/views/pay_screen.dart';
import 'package:oraan_flutter/views/profile_screen.dart';
import 'package:oraan_flutter/views/transaction_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  final List<Widget> pageList = <Widget>[
    const HomeScreen(),
    const OCSScreen(),
    const PayScreen(),
    const TransactionScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pageList[pageIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onTapTapped(2);
        },
        tooltip: 'Oraan Status',
        backgroundColor: Colors.grey,
        child: const CircleAvatar(
          radius: 66,
          backgroundImage: AssetImage(
            'assets/images/oraan.png',
          ),
          backgroundColor: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        currentIndex: pageIndex,
        onTap: onTapTapped,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'OCs'),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 25,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note), label: 'Transaction'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: 'Profile'),
        ],
      ),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }
}
