import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _inputcontroller = TextEditingController();
  String _displaytext = 'text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.green,
        child: Column(
          children: [
            TextField(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              cursorColor: Colors.brown,
              controller: _inputcontroller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter something',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
                onPressed: () {
                  print(_inputcontroller.text);
                  setState(() {
                    _displaytext = _inputcontroller.text;
                  });
                },
                child: const Text('Submit')),
            Text(_displaytext)
          ],
        ),
      )),
    );
  }
}
