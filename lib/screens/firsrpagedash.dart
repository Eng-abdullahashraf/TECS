import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:tecs/component.dart';
import 'package:tecs/cubit/cubit.dart';
import 'package:tecs/cubit/states.dart';

class firstpagedash extends StatelessWidget {
  const firstpagedash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Mycubit(),
      child: BlocConsumer<Mycubit, tecsstates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
              child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff1F8AC7),
              title: Text('Tecs'),
            ),
            drawer: Drawer(
              child: Container(
                color: Color(0xff1F8AC7),
                child: ListView(
                  children: <Widget>[
                    /* UserAccountsDrawerHeader(

                      accountEmail: Text('acc@gmail.com', style: TextStyle(color: Color(0xff000000)),),
                      accountName: Text('Naglaa', style: TextStyle(color: Color(0xff000000)),),
                      currentAccountPicture: CircleAvatar(
                        child: ClipOval(child: Image(image: AssetImage('images/mohamed.jpg'),width: 90,height: 90,fit: BoxFit.cover,)),
                      ),
                      decoration: BoxDecoration(color: Color(0xffffffff)),
                    ),*/
                    DrawerHeader(
                      decoration: BoxDecoration(color: Color(0xffffffff)),
                      child: Container(
                        child: Column(children: const [
                          CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('images/mohamed.jpg'),
                          ),
                          Text('data')
                        ]),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Color(0xffffffff),
                      ),
                      title: Text(
                        'role'.tr,
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                      tileColor: Color(0xffffffff),
                      onTap: () {
                        Mycubit.get(context).changescreen(1);
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.list,
                        color: Color(0xffffffff),
                      ),
                      title: Text(
                        'doctor'.tr,
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                      tileColor: Color(0xffffffff),
                      onTap: () {
                        Mycubit.get(context).changescreen(2);
                      },

                    ),
                    ListTile(
                      leading: Icon(
                        Icons.list,
                        color: Color(0xffffffff),
                      ),
                      title: Text(
                        'speci'.tr,
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                      tileColor: Color(0xffffffff),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.list,
                        color: Color(0xffffffff),
                      ),
                      title: Text(
                        'clinic'.tr,
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                      tileColor: Color(0xffffffff),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.list,
                        color: Color(0xffffffff),
                      ),
                      title: Text(
                        'patient'.tr,
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                      tileColor: Color(0xffffffff),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.list,
                        color: Color(0xffffffff),
                      ),
                      title: Text(
                        'rserv'.tr,
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                      tileColor: Color(0xffffffff),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.list,
                        color: Color(0xffffffff),
                      ),
                      title: Text(
                        'setting'.tr,
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                      tileColor: Color(0xffffffff),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.list,
                        color: Color(0xffffffff),
                      ),
                      title: Text(
                        'Contact'.tr,
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                      tileColor: Color(0xffffffff),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            body: Mycubit.get(context).a[Mycubit.get(context).z!],
          ));
        },
      ),
    );
  }
}
