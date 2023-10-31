import 'package:flutter/material.dart';
import 'package:flutter_api_test/Screens/screenhome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey, fontFamily: 'Kanit'),
      home: ScreenHome(),
    );
  }
}
