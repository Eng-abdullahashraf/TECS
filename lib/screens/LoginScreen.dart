
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tecs/services/buttonfield.dart';
import 'package:tecs/services/textfield.dart';


class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        backgroundColor: Color(0xff2C74B3),
      ),*/
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Color(0xff2C74B3),borderRadius:BorderRadius.vertical(bottom: Radius.circular(15.0))),
                height: 250.0,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 80.0,left: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome Dear,',style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.bold,fontSize: 35.0),),
                      Text('Have afruitful Day,',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 25.0),),
                    ],
                  ),
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Login',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black),),
                      SizedBox(height: 3.0,),
                      Text('please fill up the data below',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.black),),
                      SizedBox(height: 25.0,),
                      MyTextField(IC: Color(0XFF000000), FC: Color(0xffF9F9F9), PrefI: Icon(Icons.email), HT: 'acc@comp.com', LT: 'Email address', Scure: false),
                      SizedBox(height: 25.0,),
                      MyTextField(IC: Color(0XFF000000), FC: Color(0xffF9F9F9), PrefI: Icon(Icons.password), HT: '**********', LT: 'Password', Scure: true),
                      SizedBox(height: 25.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Buttonfield(hei: 55.0, wid: double.infinity, bcolor: Color(0xff2C74B3), tex: 'LOGIN', tcolor: Colors.amber, tfont: 25.0, onta: (){},decoration: 10.0,),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
