import 'package:flutter/material.dart';

class Clinics extends StatelessWidget {
  const Clinics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Container(
          width: 250.0,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/mohamed.jpg'),
                  radius: 40,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Dr mohamed',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ],
            )),
        Container(
            width: 250.0,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/mohamed.jpg'),
                  radius: 40,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Dr mohamed',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ],
            )),
        Container(
            width: 250.0,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/mohamed.jpg'),
                  radius: 40,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Dr mohamed',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ],
            )),

      ]),
    );
  }
}
