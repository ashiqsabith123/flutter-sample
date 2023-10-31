import 'package:flutter/material.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10),
              elevation: 4,
              color: const Color.fromARGB(255, 252, 187, 152),
              child: Container(
                padding: const EdgeInsets.all(18),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name'),
                        Text('Department'),
                      ],
                    ),
                    Text('23')
                  ],
                ),
              ),
            );
          },
          itemCount: 10,
        ),
      )),
    );
  }
}
