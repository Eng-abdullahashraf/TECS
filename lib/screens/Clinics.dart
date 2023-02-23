import 'package:flutter/material.dart';

class Clinics extends StatelessWidget {
  const Clinics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: [
              Container(
            decoration: BoxDecoration(color: Color(0xffB2B2B2),borderRadius: BorderRadius.circular(5.0)),
              width: 200.0,
              height: 250,
              child: Column(
                children: [
                  SizedBox(height: 25.0),
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
                SizedBox(width: 25.0),
                 Container(
              decoration: BoxDecoration(color: Color(0xffB2B2B2),borderRadius: BorderRadius.circular(5.0)),
              width: 200.0,
              height: 250,
              child: Column(
                children: [
                  SizedBox(height: 25.0),
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
                SizedBox(width: 25.0),
                 Container(
              decoration: BoxDecoration(color: Color(0xffB2B2B2),borderRadius: BorderRadius.circular(5.0)),
              width: 200.0,
              height: 250,
              child: Column(
                children: [
                  SizedBox(height: 25.0),
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
      ),
    );
  }
}
