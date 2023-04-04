import 'package:flutter/material.dart';
import 'package:jay_app/screens/bottom.dart';

void main() => runApp(const JayApp());

class JayApp extends StatelessWidget {
  const JayApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomBarNavigation(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
    );
  }
}
