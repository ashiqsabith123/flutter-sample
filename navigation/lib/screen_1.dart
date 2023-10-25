import 'package:flutter/material.dart';
import 'package:navigation/screen_2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) {
                  return Screen2(name: 'Person $index');
                }),
              );
            },
            title: Text(
              'Person $index',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return const Divider();
        },
        itemCount: 30,
      )),
    );
  }
}
