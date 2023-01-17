import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  Color? IC;
  Color? FC;
  Widget? PrefI;
  String? LT;
  String? HT;
  bool Scure;

  MyTextField(
      {required this.IC,
      required this.FC,
      required this.PrefI,
      required this.HT,
      required this.LT,
      required this.Scure});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
            iconColor: IC,
            fillColor: FC,
            prefixIcon: PrefI,
            labelText: LT,
            hintText: HT),
        obscureText: Scure);
  }
}