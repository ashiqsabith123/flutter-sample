import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screen2 extends StatelessWidget {
  final String name;
  const Screen2({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              child:
                  Lottie.asset('assets/animation.json', width: 100, height: 50),
            ),
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.deepPurple,
                  size: 50,
                ))
          ],
        ),
      )),
    );
  }
}
