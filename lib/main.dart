import 'package:flutter/material.dart';
import 'package:intrarecod/LoginPage/login.dart';
import 'package:intrarecod/Profile/profile.dart';
import 'package:intrarecod/StaffPages/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '42 App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:const Color(0xFF00BABC)),
        useMaterial3: true,
      ),
      home: const Profile(),
    );
  }
}