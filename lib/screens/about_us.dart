import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class aboutus extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome In TECS',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Text(
                'Our company is working on converting traditional and outdated systems into using the latest technological systems',
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),

          ],
        );


  }
}
