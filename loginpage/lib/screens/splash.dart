import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginpage/main.dart';
import 'package:loginpage/screens/home.dart';
import 'package:loginpage/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    // TODO: implement initState
    gotoLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/image/IMG_7221.JPG',
            height: 300,
            width: 200,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Welcome',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          )
        ],
      ),
    ));
  }

  Future<void> gotoLogin() async {
    await Future.delayed(const Duration(seconds: 2));
    checkUserLoggedIn();
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedPrefs = await SharedPreferences.getInstance();

    final _userLogged = _sharedPrefs.getBool(KEY_VALUE);

    if (_userLogged == null || _userLogged == false) {
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
        return ScreenLogin();
      }));
    } else {
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
        return ScreenHome();
      }));
    }
  }
}
