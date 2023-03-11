import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecs/component.dart';
import 'package:tecs/cubit/cubit.dart';
import 'package:tecs/cubit/states.dart';

class Clinics extends StatelessWidget {
  const Clinics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Mycubit,tecsstates>(
        listener: (context,state){},
        builder: (context,state){
          List? list=Mycubit.get(context).dataset;
          return Container(
            height: 250.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=>clinics(list![index]),
              separatorBuilder: (context, index) => SizedBox(width: 10.0,),
              itemCount: list!.length,),

          );
        });
  }
}
