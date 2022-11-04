import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:yourpharmacy/Cubit/State.dart';
import 'package:yourpharmacy/Cubit/cubit.dart';
import 'package:yourpharmacy/Layout/car.dart';
import 'package:yourpharmacy/Layout/settings.dart';
import 'package:yourpharmacy/components/constants/Variable.dart';
import 'package:yourpharmacy/components/functions/function.dart';
import 'package:yourpharmacy/components/widget/widget.dart';



class HomePage extends StatelessWidget  {

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
              leading: IconButton(onPressed: (){
                NavigatorToPage(context,settings());
              },
                  icon: Icon(Icons.settings,size: 25,color: HexColor('150050'))),
              actions: [
                IconButton(
                    icon: Icon(Icons.shopping_basket,size: 25,color: HexColor('150050'),),
              onPressed: (){
                NavigatorToPage(context,Cart());
              },),
              ],

            ),
            body: cubit.Screen[cubit.index],
            bottomNavigationBar: FloatingNavbar(
              items: bottomItem,
              currentIndex: cubit.index,
              backgroundColor: HexColor('150050'),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              onTap:(i) {
                cubit.changeIndex(i);
              } ,

            ),
          );
        },
      ),
    );
  }



}

