import 'dart:developer';
import 'dart:ffi';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:tecs/cubit/cubit.dart';
import 'package:tecs/cubit/states.dart';
import 'package:tecs/network/Dio.dart';
import 'package:tecs/screens/Clinics.dart';
import 'package:tecs/screens/Services.dart';
import 'package:tecs/screens/about_us.dart';
import 'package:tecs/screens/contactus.dart';
import 'package:tecs/services/buttonfield.dart';
import 'LoginScreen.dart';


class homescreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(BuildContext context) =>Mycubit()..getdataapi()..getservdata(),
      child: BlocConsumer<Mycubit,tecsstates>(
          listener: (context, state){},
          builder: (context, state) {
            return SafeArea(
              child: Scaffold(
                body: Container(
                  decoration: BoxDecoration(color: Color(0xffe7f3fc)),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Container(
                        decoration: BoxDecoration(color: Color(0xff1F8AC7),borderRadius:BorderRadius.vertical(bottom: Radius.circular(15.0))),
                        height: 200.0,
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
                      child: Buttonfield(hei: 55, wid: 200, bcolor: Color(0xff1F8AC7), tex: 'booking'.tr, tcolor: Color(0xffffffff), tfont: 25.0, onta: (){}, decoration: 10),
                    ),
                    Expanded(child: SingleChildScrollView(child: Container(child: Mycubit.get(context).x[Mycubit.get(context).s!]))),
                  ]),
                ),
                bottomNavigationBar: CurvedNavigationBar(
                  backgroundColor: Color(0xffe7f3fc),
                  color: Color(0xff1F8AC7),
                  items: [
                    Icon(Icons.account_balance_outlined,color: Color(0xffffffff),),
                    Icon(Icons.local_hospital,color: Color(0xffffffff),),
                    Icon(Icons.login,color: Color(0xffffffff),),
                    Icon(Icons.room_service,color: Color(0xffffffff),),
                    Icon(Icons.contact_phone,color: Color(0xffffffff),),
                  ],
                  onTap: (index) {
                    if (index == 0) {
                      Mycubit.get(context).changewidgethome(index);
                    } else if (index == 1) {
                      Mycubit.get(context).getdataapi();
                      Mycubit.get(context).changewidgethome(index);
                    } else if (index == 2) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => loginscreen()));
                    } else if (index == 3) {
                      Mycubit.get(context).changewidgethome(index);
                    } else if (index == 4) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => contactus()));
                    }
                  },
                ),
              ),
            );
          }
          ),
    );

  }
}

