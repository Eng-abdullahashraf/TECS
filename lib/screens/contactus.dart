import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tecs/services/textfield.dart';

import '../services/buttonfield.dart';

class contactus extends StatelessWidget {
  const contactus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        decoration: BoxDecoration(
            color: Color(0xff2C74B3),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.0))),
        height: 200.0,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'تواصل معنا',
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              Text(
                'يمكنك التواصل معنا والاستفسار عن اى شئ تريد',
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
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
              MyTextField(
                  IC: Color(0XFF000000),
                  FC: Color(0xffF9F9F9),
                  PrefI: Icon(Icons.drive_file_rename_outline),
                  HT: 'My Name Is',
                  LT: 'الاسم',
                  Scure: false),
              SizedBox(
                height: 25.0,
              ),
              MyTextField(
                  IC: Color(0XFF000000),
                  FC: Color(0xffF9F9F9),
                  PrefI: Icon(Icons.email),
                  HT: 'acc@comp.com',
                  LT: 'البريد الالكترونى',
                  Scure: false),
              SizedBox(
                height: 25.0,
              ),
              MyTextField(
                  IC: Color(0XFF000000),
                  FC: Color(0xffF9F9F9),
                  PrefI: Icon(Icons.phone),
                  HT: '01*********',
                  LT: 'الموبايل',
                  Scure: false),
              Container(
                  child: TextField(
                minLines: 5,
                maxLines: 10,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: 'Enter A Message', labelText: 'الرساله'),
              ),),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Buttonfield(
                  hei: 55.0,
                  wid: double.infinity,
                  bcolor: Color(0xff2C74B3),
                  tex: 'ارسال',
                  tcolor: Colors.amber,
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
