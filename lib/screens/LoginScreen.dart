
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tecs/network/Dio.dart';
import 'package:tecs/screens/firsrpagedash.dart';
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
    var emailadd=TextEditingController();
    var pass=TextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffe7f3fc),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: Color(0xff1F8AC7),borderRadius:BorderRadius.vertical(bottom: Radius.circular(15.0))),
                  height: 200.0,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('welcome'.tr,style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.bold,fontSize: 25.0),),
                        Text('fruitful'.tr,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
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
                        Text('login'.tr,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 3.0,),
                        Text('ple'.tr,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.black),),
                        SizedBox(height: 25.0,),
                        MyTextField(IC: Colors.white, FC: Color(0xffffffff), PrefI: Icon(Icons.email), HT: 'acc@comp.com', LT: 'ema'.tr, Scure: false,rad: 5.0,controller: emailadd,),
                        SizedBox(height: 25.0,),
                        MyTextField(IC: Colors.white, FC: Color(0xffffffff), PrefI: Icon(Icons.password), HT: '**********', LT: 'pas'.tr, Scure: true,rad: 5.0,controller: pass,),
                        SizedBox(height: 25.0,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Buttonfield(hei: 55.0, wid: double.infinity, bcolor: Color(0xff1F8AC7), tex: 'login'.tr, tcolor: Colors.white, tfont: 25.0, onta: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>firstpagedash()));
                          },decoration: 10.0,),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
