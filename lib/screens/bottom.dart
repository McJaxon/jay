import 'package:flutter/material.dart';
import 'package:jay_app/screens/chat_screen.dart';
import 'package:jay_app/screens/home_screen.dart';
import 'package:jay_app/screens/search_screen.dart';
import 'package:jay_app/screens/settings_screen.dart';
import 'package:jay_app/screens/settings_screen.dart';
import 'package:jay_app/screens/welcome_screen.dart';

class BottomBarNavigation extends StatefulWidget {
  const BottomBarNavigation({Key? key}) : super(key: key);
  @override
  State createState() => _BottomBarNavigationState();
}

class _BottomBarNavigationState extends State<BottomBarNavigation> {
  int navBarCurrentIndex = 0;
  List<Map<String, dynamic>> screens = const [
    {'screen': Home(), 'title': 'Home', 'icon': Icons.home},
    {'screen': ChatScreen(), 'title': 'Chat', 'icon': Icons.chat},
    {'screen': Settings(), 'title': 'Settings', 'icon': Icons.settings},
    {'screen': Search(), 'title': 'Search', 'icon': Icons.search}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[navBarCurrentIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.lightGreen,
          currentIndex: navBarCurrentIndex,
          onTap: (currentPageIndex) {
            setState(() {
              navBarCurrentIndex = currentPageIndex;
            });
          },
          items: screens
              .map((screen) => BottomNavigationBarItem(
                  label: screen['title'], icon: Icon(screen['icon'])))
              .toList()),
    );
  }
}
