import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  InputField(
      {super.key,
      required this.hint,
      required this.pass,
      required this.user,
      required this.err});
  final String hint;
  final bool pass;
  final TextEditingController user;
  final String err;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return err;
        }
      },
      controller: user,
      obscureText: pass,
      decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 5,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              )),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey))),
    );
  }
}
