import 'package:flutter/material.dart';
import 'package:lab_3_final/screens/welcome_screen/welcome_screen.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PAM_Quiz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const WelcomeScreen(),
    );
  }
}
