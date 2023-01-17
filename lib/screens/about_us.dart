import 'package:flutter/material.dart';
class aboutus extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            child: Image(image: AssetImage('images/logos.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Column(
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
            ),
          ),
        ],
      ),
    );
  }
}
