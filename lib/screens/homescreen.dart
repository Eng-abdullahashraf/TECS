import 'dart:developer';
import 'dart:ffi';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tecs/screens/Clinics.dart';
import 'package:tecs/screens/Services.dart';
import 'package:tecs/screens/about_us.dart';
import 'package:tecs/screens/contactus.dart';
import 'package:tecs/services/buttonfield.dart';

import 'LoginScreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int? s = 0;
  List<Widget> x = [
    aboutus(),
    contactus(),
    services(),
    Clinics(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black54,
                  BlendMode.darken,
                )),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Expanded(
                child: Container(
                  child: Image(image: AssetImage('images/logos.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Buttonfield(hei: 45, wid: 200, bcolor: Colors.yellow, tex: 'احجز الان', tcolor: Colors.black, tfont: 15, onta: (){}, decoration: 10),
              ),
              Expanded(child: SingleChildScrollView(child: Container(child: x[s!]))),
            ]),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xff000507),
          color: Color(0xffffffff),
          items: [
            Icon(
              Icons.account_balance_outlined,
            ),
            Icon(Icons.local_hospital),
            Icon(Icons.login),
            Icon(Icons.room_service),
            Icon(Icons.contact_phone),
          ],
          onTap: (index) {
            if (index == 0) {
              setState(() {
                s = 0;
              });
            } else if (index == 1) {
              setState(() {
                s=3;
              });
            } else if (index == 2) {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginscreen()));
              });
            } else if (index == 3) {
              setState(() {
                s = 2;
              });
            } else if (index == 4) {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => contactus()));              });
            }
          },
        ),
      ),
    );
  }
}
