import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'LoginScreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
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
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        child: Image(image: AssetImage('images/logos.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 200.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Welcome In TECS',
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(35.0),
                              child: Text(
                                'Our company is working on converting traditional and outdated systems into using the latest technological systems',
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             /* Buttonfield(
                hei: 55.0,
                wid: double.infinity,
                bcolor: Color(0xff2C74B3),
                tex: 'Let \'s Get Started',
                tcolor: Colors.amber,
                tfont: 20.0,
                onta: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginscreen()));
                },
                decoration: 25.0,
              ),*/
            ]),
          ),

        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color(0xff000507),
            items:[
          Icon(Icons.account_balance_outlined,),
          Icon(Icons.local_hospital),
          Icon(Icons.login),
          Icon(Icons.room_service),
          Icon(Icons.contact_phone),
        ],
            onTap: (index)  {
            if(index==0){
              setState(() {

              });
            }
            else if(index == 1){
              setState(() {

              });
            }
            else if(index==2){
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginscreen()));
              });
            }
            else if(index==3){
              setState(() {

              });
            }
            else if(index==4){
              setState(() {

              });
            }
            } ,
        ),
      ),
    );
  }
}
