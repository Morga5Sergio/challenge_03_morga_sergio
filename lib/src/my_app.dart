import 'package:challenge_03_morga_sergio/src/pages/bottom_navigation_bar_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: BottomNavigationBarPage(),
    );
  }
}
