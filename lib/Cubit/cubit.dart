
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yourpharmacy/Cubit/State.dart';
import 'package:yourpharmacy/Layout/Search.dart';
import 'package:yourpharmacy/Layout/category.dart';
import 'package:yourpharmacy/Layout/homeitem.dart';
import 'package:yourpharmacy/Layout/profile.dart';
import 'package:yourpharmacy/Layout/settings.dart';
import 'package:yourpharmacy/components/SharedPreferences/Preferences.dart';
import 'package:yourpharmacy/components/widget/widget.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit() : super(AppInitialState());
  static AppCubit get(con)=> BlocProvider.of(con);
  int index = 0;
  bool isDark=false;
  bool isFavorite=false;
  bool isCart=false;
  List<Widget> Screen = [
    HomeItem(),
    Category(),
    Search(),
    Profile(),
  ];
  void changeIndex(int i){
    index=i;
    emit(AppBottomNavigationBarState());
  }
  void changeFavorite(){
    isFavorite=!isFavorite;
    emit(AppFavoriteState());
  }

  void changeMode2({bool? d}){
    if(d!=null){
      isDark=d;
      emit(AppDarkModeState());
    }
    else{
      isDark=!isDark;
      Preferences.putData(key: 'isDark', v: isDark).then((value){
        emit(AppDarkModeState());
      });
    }


  }
  void changeMode(){
    isDark=!isDark;
    emit(AppDarkModeState());

  }
}