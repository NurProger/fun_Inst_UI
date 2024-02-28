import 'package:flutter/material.dart';
import 'package:insta_ui/Views/Home_Screen.dart';
import 'package:insta_ui/Views/profile_screen.dart';

import 'Main_Screen.dart';
import 'Views/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Main_Screen(),
    );
  }
}
