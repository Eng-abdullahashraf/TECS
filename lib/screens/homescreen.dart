import 'dart:developer';
import 'dart:ffi';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tecs/network/Dio.dart';
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

  void data(){
    diohelp.getdata(URL: 'api/v1/settings');
    
    //diohelp.getdata(URL: 'api/v1/settings').then((value) => print(value.data)).catchError((error){error.toString();});

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(

          /*   decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black54,
                  BlendMode.darken,
                )),
          ),*/

          decoration: BoxDecoration(color: Color(0xff3C4048)),
          child: Column(children: [
            /*Expanded(
              child: Container(
                child: Image(image: AssetImage('images/logos.png')),
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                decoration: BoxDecoration(color: Color(0xff00ABB3),borderRadius:BorderRadius.vertical(bottom: Radius.circular(15.0))),
                height: 250.0,
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('images/nne.png')),
                    Text('TECS',style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.bold,fontSize: 40.0 ),)
                ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0,top: 15.0),
              child: Buttonfield(hei: 55, wid: 200, bcolor: Color(0xff00ABB3), tex: 'booking'.tr, tcolor: Color(0xffffffff), tfont: 25.0, onta: (){}, decoration: 10),
            ),
            Expanded(child: SingleChildScrollView(child: Container(child: x[s!]))),
          ]),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xff3C4048),
          color: Color(0xff00ABB3),
          items: [
            Icon(Icons.account_balance_outlined,color: Color(0xffffffff),),
            Icon(Icons.local_hospital,color: Color(0xffffffff),),
            Icon(Icons.login,color: Color(0xffffffff),),
            Icon(Icons.room_service,color: Color(0xffffffff),),
            Icon(Icons.contact_phone,color: Color(0xffffffff),),
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
