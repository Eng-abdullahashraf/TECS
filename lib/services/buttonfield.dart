
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Buttonfield extends StatelessWidget {
  String? tex;
  double? hei;
  double? wid;
  double? tfont;
  Color? bcolor;
  Color? tcolor;
  VoidCallback? onta;
  double? decoration;


  Buttonfield({
    required this.hei,
    required this.wid,
    required this.bcolor,
    required this.tex,
    required this.tcolor,
    required this.tfont,
    required this.onta,
    required this.decoration,
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onta,
      child: Container(
        decoration: BoxDecoration(color: bcolor!,borderRadius:BorderRadius.circular(decoration!)),
        height: hei,
        alignment: Alignment.center,
        width: wid,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            tex!,
            style:TextStyle(color: tcolor,fontSize: tfont,fontWeight: FontWeight.bold) ,
          ),
        ),
      ),
    );
  }
}
