import 'package:flutter/material.dart';
import 'package:loginpage/screens/splash.dart';

const KEY_VALUE = 'logged';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.deepPurple, fontFamily: 'Myfamily'),
      home: const ScreenSplash(),
    );
  }
}
