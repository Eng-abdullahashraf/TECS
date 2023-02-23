import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tecs/locale/locale.dart';
import 'package:tecs/network/Dio.dart';
import 'package:tecs/screens/tecsplash.dart';


import 'screens/splashscreen.dart';

void main()  {

  diohelp.init();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      translations: Mylocale(),
      locale: Get.deviceLocale ,
      fallbackLocale: Locale('en')

    );

  }
}
