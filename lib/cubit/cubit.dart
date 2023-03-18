import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    aboutusscreen('TECS WITH YOU', 'OUR COMPANY IS WORKING ON CONVERTING TRADITIONAL AND OLD SYSTEMS INTO USING THE LATEST TECHNOLOGICAL SYSTEMS WITH THE PRESENCE OF ENGINEERS AND EXPERTS TO ASSIST ALL CUSTOMERS IN SOLVING TECHNICAL PROBLEMS.'),
    Clinics(),
    contactus(),
    services(),
  ];

  int? z=0;
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
    diohelp
        .getdata(URL: 'api/v1/settings')
        .then((value) { dataset=value.data['data']['settings']['clinics'];} )
        .catchError((error) {
      error.toString();
    });
    emit(tecsgetdatafromapi());
  }

  List<dynamic>? servdata;
  void getservdata() {
    diohelp
        .getdata(URL: 'api/v1/settings')
        .then((value) { servdata=value.data['data']['settings']['services'];} )
        .catchError((error) {
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
  
  void postdata(String? name,String? mail,String? ph,String? mes){
    diohelp.postdata(URL: 'api/v1/send-contact-us', data: {'name':name,'email':mail,'phone':ph,'message':mes})
        .then((value) => print(value.data));
  }
}
