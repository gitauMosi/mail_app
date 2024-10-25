import 'package:flutter/material.dart';
import 'package:mail_app/views/home/home_page.dart';
import 'package:mail_app/views/meet/meet_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedItemIndex = 0;

  final List<Widget> pages = [const HomePage(), const MeetPage()];

  void onItemSelectedIndex(int index) {
    setState(() {
      selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedItemIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedItemIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: onItemSelectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            btnNavItem("Home", Icons.mail_outline),
            btnNavItem("Meet", Icons.videocam_outlined)
          ]),
    );
  }

  BottomNavigationBarItem btnNavItem(String label, IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
