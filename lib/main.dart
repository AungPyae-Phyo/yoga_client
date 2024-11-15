import 'package:flutter/material.dart';
import 'package:yoga_client/common/bottom_nav/bottom_nav_screen.dart';

import 'config/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const BottomNav(),
    );
  }
}
