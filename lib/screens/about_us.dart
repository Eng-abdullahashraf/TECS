import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tecs/component.dart';

import '../cubit/cubit.dart';
import '../cubit/states.dart';

class aboutus extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Mycubit,tecsstates>(
        listener: (context,state){},
        builder: (context,state){
          return aboutusscreen(Mycubit.get(context).header,Mycubit.get(context).about);
        }
    )  ;

  }
}
