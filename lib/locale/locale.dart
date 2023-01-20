

import 'package:get/get.dart';
import 'package:tecs/locale/ar.dart';
import 'package:tecs/locale/en.dart';
class Mylocale implements Translations{


  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'ar' : ar,
    'en' : en,

  };


}
