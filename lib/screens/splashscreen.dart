import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tecs/screens/homescreen.dart';

class tecsplash extends StatefulWidget {
  const tecsplash({Key? key}) : super(key: key);

  @override
  State<tecsplash> createState() => _tecsplashState();
}

class _tecsplashState extends State<tecsplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => homescreen())));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Color(0xff2C74B3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 75.0),
              child: Text(
                'TECS APP',
                style: TextStyle(
                    color: Color(0xffffe247),
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
            ),
            Expanded(
              child: Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Powerd By',
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'TECS',
                    style: TextStyle(
                        color: Color(0xffffe247),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
