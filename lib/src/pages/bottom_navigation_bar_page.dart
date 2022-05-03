
import 'package:challenge_03_morga_sergio/src/pages/screen/screen1.dart';
import 'package:challenge_03_morga_sergio/src/pages/screen/screen2.dart';
import 'package:challenge_03_morga_sergio/src/pages/screen/screen3.dart';

import 'package:challenge_03_morga_sergio/src/pages/screen/screen4.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  final tabs = [
    Center(child: Sreen1()),
    Center(child: Sreen2()),
    Center(child: Screen3()),
    Center(child: Sreen4()),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation Bar"),
        ),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 19.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Inicio"
            )
            ,BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm),
                label: "Alarma"
            )
            ,BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: "Negocio"
            )
            ,BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: "Escuela"
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      );
  }
}
