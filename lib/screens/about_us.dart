import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class aboutus extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 10.0,left: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xffB2B2B2),borderRadius: BorderRadius.circular(15.0)),
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0,right: 5.0,left: 5.0),
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome In TECS',
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(35.0),
                      child: Text(
                        'Our company is working on converting traditional and outdated systems into using the latest technological systems.',
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,),
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ],
                ),
          ),
        ),
      ),
    );


  }
}
