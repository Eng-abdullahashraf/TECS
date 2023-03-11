import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecs/cubit/cubit.dart';
import 'package:tecs/screens/homescreen.dart';
import 'package:flutter/material.dart';

import '../cubit/states.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {

    return EasySplashScreen(
      logoWidth: 150.0,
      logo: Image(image: AssetImage('images/nne.png'),),
      title: Text(
        "TECS",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color(0xff1F8AC7),
      showLoader: true,
      loadingText: Text("Loading...",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),

      navigator: homescreen(),
      durationInSeconds: 5,
    );
  }
}