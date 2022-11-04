
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourpharmacy/Cubit/State.dart';
import 'package:yourpharmacy/Cubit/cubit.dart';
import 'package:yourpharmacy/components/Theme/themes.dart';

class settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context)=>AppCubit(),
        child: BlocConsumer<AppCubit,AppStates>(
          listener:(con,sta){} ,
          builder: (con,sta){
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              // themeMode: ThemeMode.light,
              themeMode: AppCubit.get(con).isDark ? ThemeMode.dark: ThemeMode.light,
              theme: Light_Theme(),
              darkTheme: Dark_Theme(),
              home: Scaffold(
                body: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text('Dark Mode',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: AppCubit.get(con).isDark ?Colors.white:Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 10,),
                        Text('Dark Mode',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: AppCubit.get(con).isDark ?Colors.white:Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 10,),
                        Text('mostafa',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: AppCubit.get(con).isDark ?Colors.white:Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 10,),
                        Text('04080800',style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: AppCubit.get(con).isDark ?Colors.white:Colors.black,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 10,),
                        RaisedButton(
                          child: Text('Dark Mode',style: TextStyle(color: Colors.white),),
                          onPressed: (){},
                          color: Colors.black,
                        ),
                        SizedBox(height: 10,),
                        IconButton(onPressed: (){
                          AppCubit.get(con).changeMode();
                        },
                            icon: Icon(AppCubit.get(con).isDark ?Icons.dark_mode:Icons.light_mode,
                              size: 50,))
                      ],
                    ),
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: (){},
                  child: Icon(Icons.add),
                ),
              ),
            );
          },
        )

    );
  }
}
