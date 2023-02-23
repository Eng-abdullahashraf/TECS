import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  Color? IC;
  Color? FC;
  Widget? PrefI;
  String? LT;
  String? HT;
  bool Scure;
  double? rad;

  MyTextField(
      {required this.IC,
      required this.FC,
      required this.PrefI,
      required this.HT,
      required this.LT,
      required this.Scure,
        required this.rad
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color:FC,borderRadius: BorderRadius.circular(rad!)),
      child: TextFormField(
          decoration: InputDecoration(
              iconColor: IC,
              fillColor: FC,
              prefixIcon: PrefI,
              labelText: LT,
              hintText: HT),
          obscureText: Scure),
    );

  }
}