import 'dart:developer';
import 'dart:ffi';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tecs/screens/Services.dart';
import 'package:tecs/screens/about_us.dart';
import 'package:tecs/screens/contactus.dart';

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
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        /*appBar: AppBar(
          backgroundColor: Color(0xff2C74B3),
          leading: Builder(builder: (context)=>IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
           }, icon: Icon(Icons.menu,color: Colors.amber,) ,),
          ),
          title: Text('TECS',style: TextStyle(color: Colors.amber),),
        ),*/
        /* drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('images/tecs.png'),
                      height: 65.0),
                      Text('Tecs',style: TextStyle(color: Colors.yellow , fontSize: 30.0),),
                    ],
                  )),
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.0),bottomLeft: Radius.circular(10.0))),
            ),
            ListTile(
              title: const Text('Login',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              leading: const Icon(Icons.login,color: Colors.black,),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>loginscreen()));
              },
            ),
            ListTile(
              title: const Text('Services',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              leading: const Icon(Icons.miscellaneous_services,color: Colors.black,),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Contact us',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              leading: const Icon(Icons.contact_mail,color: Colors.black,),
              onTap: () {},
            ),
            ListTile()
          ],
        )),*/
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
              Expanded(child: SingleChildScrollView(child: Container(child: x[s!]))),
            ]),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xff000507),
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
              setState(() {});
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
                s = 1;
              });
            }
          },
        ),
      ),
    );
  }
}
