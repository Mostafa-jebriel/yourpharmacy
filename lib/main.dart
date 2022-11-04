import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourpharmacy/Cubit/cubit.dart';
import 'package:yourpharmacy/Layout/home.dart';
import 'package:yourpharmacy/components/SharedPreferences/Preferences.dart';
import 'package:yourpharmacy/components/Theme/themes.dart';

import 'Cubit/State.dart';

void main(){

  // WidgetsFlutterBinding.ensureInitialized();
  //
  // await Preferences.init();
  //
  // bool? dark=Preferences.getData(key: 'isDark');

  //runApp(MyApp(dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // final bool? d;
  // MyApp(this.d);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => AppCubit(),
        child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, stata) {},
          builder: (context, stata) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
             // themeMode: AppCubit.get(context).isDark ? ThemeMode.dark: ThemeMode.light,
              themeMode: ThemeMode.light,
              theme: Light_Theme(),
              darkTheme: Dark_Theme(),
              home: HomePage(),
            );
          },
        ));
  }
}
