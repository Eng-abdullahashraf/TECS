import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tecs/component.dart';
import 'package:tecs/cubit/states.dart';
import 'package:tecs/network/Dio.dart';

import '../screens/Clinics.dart';
import '../screens/Services.dart';
import '../screens/about_us.dart';
import '../screens/contactus.dart';

class Mycubit extends Cubit<tecsstates> {
  Mycubit() : super(tecsinitialstate());

  // => BlocProvider.of(context)

  static Mycubit get(context) => BlocProvider.of(context);

  int? s = 0;
  List<Widget> x = [
    aboutusscreen('TECS WITH YOU',
        'OUR COMPANY IS WORKING ON CONVERTING TRADITIONAL AND OLD SYSTEMS INTO USING THE LATEST TECHNOLOGICAL SYSTEMS WITH THE PRESENCE OF ENGINEERS AND EXPERTS TO ASSIST ALL CUSTOMERS IN SOLVING TECHNICAL PROBLEMS.'),
    Clinics(),
    contactus(),
    services(),
  ];

  int? z = 0;
  List<Widget> a = [
    first(),
    role(),
    doctors(),
  ];
  //
  String? header;
  String? about;

  List<dynamic>? dataset;
  void getdataapi() {
    diohelp.getdata(URL: 'api/v1/settings').then((value) {
      dataset = value.data['data']['settings']['clinics'];
    }).catchError((error) {
      error.toString();
    });
    emit(tecsgetdatafromapi());
  }

  List<dynamic>? servdata;
  void getservdata() {
    diohelp.getdata(URL: 'api/v1/settings').then((value) {
      servdata = value.data['data']['settings']['services'];
    }).catchError((error) {
      error.toString();
    });
    emit(tecsgetdatafromapi());
  }

  void changewidgethome(int a) {
    s = a;
    emit(tecschangestate());
  }

  void changescreen(int a) {
    z = a;
    emit(tecschangestate());
  }

  void postdata(String? name, String? mail, String? ph, String? mes) {
    diohelp.postdata(URL: 'api/v1/send-contact-us', data: {
      'name': name,
      'email': mail,
      'phone': ph,
      'message': mes
    }).then((value) => print(value.data));
  }

  Database? data;
  void Createdatabase() async {
    data = await openDatabase(
      'tecsdata',
      version: 2,
      onCreate: (db, version) {
        db
            .execute(
                'CREATE TABLE clinics(id INTEGER PRIMARY KEY, name TEXT, specialty TEXT, Address TEXT, price TEXT, phone TEXT,time TEXT)')
            .then((value) => print('table clinics created'))
            .catchError((error) => print('Error when created'));
        db
            .execute(
                'CREATE TABLE services(id INTEGER PRIMARY KEY, title TEXT, tex TEXT)')
            .then((value) => print('table services created'))
            .catchError((error) => print('Error when created'));
      },
      onOpen: (db) => print('database opened'),
    );
  }

  void inserttodatabase() {
    data!
        .transaction((txn) => txn.rawInsert('INSERT INTO services(title,tex) VALUES("web", " sekoo")'))
        .then((value) => print('$value data inserted'))
        .catchError((error) {
      print('error data');
    });
  }
}
