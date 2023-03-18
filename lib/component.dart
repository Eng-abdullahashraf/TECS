import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget aboutusscreen(String? s, String? a) => Padding(
      padding: const EdgeInsets.only(right: 10.0, left: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(15.0)),
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 5.0, left: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  s!,
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    a!,
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
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

Widget clinics() => Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Container(
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 5.0,
                  color: Color(0xffa09999),
                  offset: Offset.zero)
            ],
          ),
          width: 300.0,
          height: 250,
          child: Column(
            children: [
              Container(
                color: Color(0xffC8D5EB),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/mohamed.jpg'),
                        radius: 35,
                      ),
                      SizedBox(width: 5.0,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              // '${clinic['name']}',
                              'دكتور نجلاء الخولى',
                              style: TextStyle(
                                  color: Color(0xff1F8AC7),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              // '${clinic['name']}',
                              'أخصائي نساء وتوليد',
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Row(
                      children: [
                        Icon(Icons.location_on,color: Color(0xff1F8AC7),),
                        Expanded(
                          child: Text(
                            // '${clinic['name']}',
                            'المنزلة الموقف القديم بجوار محلات كشري التابعي  ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Row(
                      children: [
                        Icon(Icons.monetization_on,color: Color(0xff1F8AC7),),
                        Text(
                          //'${clinic['phone']}',
                          'سعر الكشف :',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0),
                        ),
                        Text(
                          //'${clinic['phone']}',
                          '80',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Row(
                      children: [
                        Icon(Icons.call,color: Color(0xff1F8AC7),),

                        Text(
                          //'${clinic['email']}',
                          '01211030844',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Row(
                      children: [
                        Icon(Icons.timer,color: Color(0xff1F8AC7),),

                        Text(
                          //'${clinic['email']}',
                          '12:00ص حتي 8:00م',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          )),
    );

Widget servscreen(servdata) => Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffffffff), borderRadius: BorderRadius.circular(5.0)),
        width: 300.0,
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/mohamed.jpg'),
              radius: 30,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '${servdata['title']}',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 7.0, left: 7.0),
              child: Text(
                '${servdata['text']}',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
                textAlign: TextAlign.center,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );

Widget statistics(String x, String a) => Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
              blurRadius: 5.0, color: Color(0xffbbbbbb), offset: Offset.zero)
        ],
      ),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Image(image: AssetImage('images/statistic.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6, right: 6, top: 8),
            child: Column(
              children: [
                Text(
                  x,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xff1F8AC7),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(a,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff000000),
                    ))
              ],
            ),
          )
        ],
      ),
    );

Widget first() => Column(
      children: [
        Stack(
          children: [
            Container(
              height: 150.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff1F8AC7),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0))),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
              child: Container(
                height: 150.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5.0,
                        color: Color(0xffbbbbbb),
                        offset: Offset.zero)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'welc'.tr,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Color(0xff1F8AC7)),
                    ),
                    Text(
                      'Dr.Naglaa',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xff1F8AC7)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7.0, right: 7.0),
                  child: statistics('patientnum'.tr, '--'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7.0, right: 7.0),
                  child: statistics('dailyrev'.tr, '--'),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7.0, right: 7.0),
                  child: statistics('dailyres'.tr, '--'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7.0, right: 7.0),
                  child: statistics('dailyrep'.tr, '--'),
                ),
              ],
            ),
          ),
        ),
      ],
    );

Widget role() => Column(
      children: [
        Text('role'),
      ],
    );

Widget doctors() => Column(
      children: [
        Text('doctors'),
      ],
    );
