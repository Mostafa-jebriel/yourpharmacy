import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:yourpharmacy/Cubit/State.dart';
import 'package:yourpharmacy/Cubit/cubit.dart';
import 'package:yourpharmacy/components/constants/Variable.dart';
import 'package:yourpharmacy/components/widget/widget.dart';

class SeeAll extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext c) => AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (BuildContext cc,AppStates s){},
        builder: (BuildContext cc,AppStates s){
          AppCubit cubit=AppCubit.get(cc);
          return  Scaffold(
            appBar: AppBar(
              title: Text("Your Pharmacy"),
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                  icon: Icon(Icons.search,size: 25,color: HexColor('150050'),),
                  onPressed: (){},),
              ],
            ),
            body: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (con,ind)=>MainItem2(OffersList2[ind]),
              separatorBuilder: (c,i)=>SizedBox(
                height: 10,
              ),
              itemCount: OffersList2.length,
            ),
          );
        },
      ),
    );
  }
}
