import 'package:flutter/material.dart';

class contactus extends StatelessWidget {
  const contactus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Icon(Icons.location_on_outlined,color: Color(0xffffffff),size: 30,),
          SizedBox(width: 5.0,),
          Text('Elbosrat - Elmanzala - Dakhalia',style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.bold,fontSize: 20.0),),
        ],),
        SizedBox(height: 20.0,),
        Row(children: [
          Icon(Icons.phone,color: Color(0xffffffff),size: 30,),
          SizedBox(width: 5.0,),
          Text('01024797768 ',style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.bold,fontSize: 20.0,),maxLines: 3,),
        ],),
        SizedBox(height: 20.0,),
        Row(children: [
          Icon(Icons.phone,color: Color(0xffffffff),size: 30,),
          SizedBox(width: 5.0,),
          Text('01220288992 ',style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.bold,fontSize: 20.0,),maxLines: 3,),
        ],),
        SizedBox(height: 20.0,),
        Row(children: [
          Icon(Icons.phone,color: Color(0xffffffff),size: 30,),
          SizedBox(width: 5.0,),
          Text('01001050863 ',style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.bold,fontSize: 20.0,),maxLines: 3,),
        ],),
        SizedBox(height: 20.0,),
        Row(children: [
          Icon(Icons.mail_outlined,color: Color(0xffffffff),size: 30,),
          SizedBox(width: 5.0,),
          Text('tecs.techsolution@gmail.com',style: TextStyle(color: Color(0xffffffff),fontWeight: FontWeight.bold,fontSize: 20.0,),maxLines: 3,),
        ],),


      ],
    );
  }
}
