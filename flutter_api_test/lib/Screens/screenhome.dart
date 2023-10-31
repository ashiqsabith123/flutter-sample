import 'package:flutter/material.dart';
import 'package:flutter_api_test/Screens/screenadd.dart';
import 'package:flutter_api_test/Screens/screenmain.dart';
import 'package:flutter_api_test/Screens/screensearch.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _currentSelectedIndex = 0;
  final _pages = const [
    ScreenMain(),
    ScreenSearch(),
    ScreenAdd(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentSelectedIndex],
      backgroundColor: const Color.fromARGB(255, 233, 237, 233),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentSelectedIndex,
          onTap: (newindex) {
            setState(() {
              _currentSelectedIndex = newindex;
            });
          },
          iconSize: 30,
          fixedColor: const Color.fromARGB(255, 36, 36, 35),
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                ),
                label: 'Students'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_rounded,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                ),
                label: 'Add'),
          ]),
    );
  }
}
