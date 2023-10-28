import 'package:flutter/material.dart';
import 'package:loginpage/main.dart';
import 'package:loginpage/screens/home.dart';
import 'package:loginpage/widgtes/textfield.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _username = TextEditingController();
  final _password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Container(
            height: 500,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Login Page'),
                  InputField(
                    hint: 'Username',
                    pass: false,
                    user: _username,
                    err: "Username required",
                  ),
                  InputField(
                    hint: 'Password',
                    pass: true,
                    user: _password,
                    err: 'Password required',
                  ),
                  ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          if (_username.text == 'Ashiq' &&
                              _password.text == '1234') {
                            final _sharedPrefs =
                                await SharedPreferences.getInstance();
                            await _sharedPrefs.setBool(KEY_VALUE, true);
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return ScreenHome();
                            }));
                          }
                        } else {
                          // ScaffoldMessenger.of(context).showMaterialBanner(
                          //     MaterialBanner(content: Text('Error'), actions: [
                          //   ElevatedButton(onPressed: () {}, child: Text('JJ'))
                          // ]));

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Eroor'),
                            margin: EdgeInsets.all(10),
                            backgroundColor: Colors.red,
                            behavior: SnackBarBehavior.floating,
                          ));
                        }
                      },
                      child: Text('Sign In'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
