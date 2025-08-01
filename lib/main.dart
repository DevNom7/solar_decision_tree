import 'package:flutter/material.dart';
import 'screens/intro_screen.dart';

void main() => runApp(SolarDecisionApp());

class SolarDecisionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar Decision App',
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}
