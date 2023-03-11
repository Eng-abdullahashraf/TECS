import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:tecs/cubit/cubit.dart';
import 'package:tecs/cubit/states.dart';
import 'package:tecs/services/textfield.dart';

import '../services/buttonfield.dart';

class contactus extends StatelessWidget {
  const contactus({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var name=TextEditingController();
    var ph=TextEditingController();
    var ma=TextEditingController();
    var mess=TextEditingController();

    return BlocProvider(
        create: (BuildContext context)=> Mycubit(),
        child: BlocConsumer<Mycubit,tecsstates>(
          listener: (context, state) {},
          builder: (context, state) {
            return SafeArea(
              child: Scaffold(
                  backgroundColor: Color(0xffe7f3fc),
                  body: SingleChildScrollView(
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xff1F8AC7),
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
                                  Scure: false,rad: 5.0,controller: name,),
                                SizedBox(
                                  height: 25.0,
                                ),
                                MyTextField(
                                  IC: Color(0XFFffffff),
                                  FC: Color(0xffffffff),
                                  PrefI: Icon(Icons.email),
                                  HT: 'acc@comp.com',
                                  LT: 'mail'.tr,
                                  Scure: false,rad: 5.0,controller: ma),
                                SizedBox(
                                  height: 25.0,
                                ),
                                MyTextField(
                                  IC: Color(0XFFffffff),
                                  FC: Color(0xffffffff),
                                  PrefI: Icon(Icons.phone),
                                  HT: '01*********',
                                  LT: 'mobile'.tr,
                                  Scure: false,rad: 5.0,controller: ph),
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
                                      controller: mess
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
                                    bcolor: Color(0xff1F8AC7),
                                    tex: 'send'.tr,
                                    tcolor: Colors.white,
                                    tfont: 25.0,
                                    onta: () {
                                      if(name.text==null || ma.text==null || ph.text==null || mess.text==null || name.text=='' || ma.text=='' ||ph.text==''||mess.text=='')
                                      {
                                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('fill'.tr)));
                                      }else{
                                        Mycubit.get(context).postdata(name.text,ma.text,ph.text,mess.text);
                                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('success'.tr)));
                                      }


                                    },
                                    decoration: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ]))),
            );
          },
        ),
    );
  }
}
