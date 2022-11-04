
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourpharmacy/Cubit/State.dart';
import 'package:yourpharmacy/Cubit/cubit.dart';
import 'package:yourpharmacy/components/Theme/themes.dart';
import 'package:yourpharmacy/components/constants/Variable.dart';

class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context)=>AppCubit(),
        child: BlocConsumer<AppCubit,AppStates>(
          listener:(con,sta){} ,
          builder: (con,sta){
            return Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Search',
                          suffixIcon: Icon(Icons.search_rounded) ,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        )

    );
  }
}