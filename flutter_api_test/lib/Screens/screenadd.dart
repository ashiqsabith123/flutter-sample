import 'package:flutter/material.dart';
import 'package:flutter_api_test/Decoration/decoration.dart';

class ScreenAdd extends StatelessWidget {
  const ScreenAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width / 3.8,
                      child: TextField(
                        decoration: decoration('Enter ID'),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width / 1.7,
                      child: TextField(
                        decoration: decoration('Enter Name'),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  decoration: decoration('Enter Department'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(203, 143, 110, 1),
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
