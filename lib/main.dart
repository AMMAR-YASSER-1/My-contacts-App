// ملف main.dart
import 'package:flutter/material.dart';
import 'package:app_2/my_contacts.dart';
import 'package:app_2/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: SplashScreen(), 
      routes: {
        '/home': (context) => MyContacts(), 
      },
    );
  }
}
