import 'package:flutter/material.dart';
import 'package:flutter_api_test/Decoration/decoration.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  decoration: decoration('Enter Student Id'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 217, 161, 131),
                    ),
                    minimumSize: MaterialStatePropertyAll(Size(200, 40))),
                onPressed: () {
                  print('hello');
                },
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
