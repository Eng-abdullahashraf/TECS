import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class diohelp {
  static Dio? dio;

  static init() {
    dio = Dio(BaseOptions(
        baseUrl: 'http://new.tecs.live/',
        receiveDataWhenStatusError: true));

  }

  static Future<Response> getdata({@required String? URL,}) async {
    return await dio!.get(URL!);

  }
}
