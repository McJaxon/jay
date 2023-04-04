// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:jay_app/screens/home_screen.dart';
// import 'package:jay_app/screens/search_screen.dart';
// import 'package:jay_app/screens/settings_screen.dart';

// class ButtonNavBar extends StatefulWidget {
//   const ButtonNavBar({super.key});

//   @override
//   State<ButtonNavBar> createState() => _ButtonNavBarState();
// }

// class _ButtonNavBarState extends State<ButtonNavBar> {
//   int navigationBarIndex = 0;
//   List<Map<String, dynamic>> screens = const [
//     {'screen': Home(), 'title': ' Home', 'icon': Icon(Icons.home)},
//     {'screen': Settings(), 'title': 'Settings', 'icon': Icon(Icons.settings)},
//     {'screen': Search(), 'title': ' Search', 'icon': Icon(Icons.search)},
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[navigationBarIndex]['screen'],
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: navigationBarIndex,
//           onTap: (currentPage) {
//             setState(() {
//               navigationBarIndex = currentPage;
//             });
//           },
//           items: screens
//               .map((screen) => BottomNavigationBarItem(
//                   label: screen['title'], icon: screen['icon']))
//               .toList()),
//     );
//   }
// }
