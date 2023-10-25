import 'package:flutter/material.dart';
import 'package:loginpage/screens/splash.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const ScreenSplash(),
    );
  }
}
