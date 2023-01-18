import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:tecs/screens/homescreen.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image(image: AssetImage('images/logos.png'),),
      title: Text(
        "TECS",
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color(0xff091332),
      showLoader: true,
      loadingText: Text("Loading...",
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      navigator: homescreen(),
      durationInSeconds: 5,
    );
  }
}
