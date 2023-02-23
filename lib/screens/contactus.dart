import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tecs/services/textfield.dart';

import '../services/buttonfield.dart';

class contactus extends StatelessWidget {
  const contactus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3C4048),
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        decoration: BoxDecoration(
            color: Color(0xff00ABB3),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.0))),
        height: 200.0,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 25.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'contact'.tr,
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                Text(
                  'ca'.tr,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextField(
                  IC: Color(0XFFffffff),
                  FC: Color(0xffffffff),
                  PrefI: Icon(Icons.drive_file_rename_outline),
                  HT: 'My Name Is',
                  LT: 'name'.tr,
                  Scure: false,rad: 5.0),
              SizedBox(
                height: 25.0,
              ),
              MyTextField(
                  IC: Color(0XFFffffff),
                  FC: Color(0xffffffff),
                  PrefI: Icon(Icons.email),
                  HT: 'acc@comp.com',
                  LT: 'mail'.tr,
                  Scure: false,rad: 5.0),
              SizedBox(
                height: 25.0,
              ),
              MyTextField(
                  IC: Color(0XFFffffff),
                  FC: Color(0xffffffff),
                  PrefI: Icon(Icons.phone),
                  HT: '01*********',
                  LT: 'mobile'.tr,
                  Scure: false,rad: 5.0),
              SizedBox(
                height: 25.0,
              ),
              Container(
                decoration: BoxDecoration(color: Color(0xffffffff),borderRadius: BorderRadius.circular(5.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5.0,left: 5.0),
                    child: TextField(
                      minLines: 5,
                      maxLines: 10,
                       keyboardType: TextInputType.multiline,
                       decoration: InputDecoration(
                             hintText: 'Enter A Message',
                           labelText: 'message'.tr),
              ),
                  ),),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Buttonfield(
                  hei: 55.0,
                  wid: double.infinity,
                  bcolor: Color(0xff00ABB3),
                  tex: 'send'.tr,
                  tcolor: Colors.white,
                  tfont: 25.0,
                  onta: () {},
                  decoration: 10.0,
                ),
              ),
            ],
          ),
        ),
      )
    ])));
  }
}
