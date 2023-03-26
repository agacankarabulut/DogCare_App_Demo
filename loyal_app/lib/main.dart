import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loyal_app/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp()); 
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
