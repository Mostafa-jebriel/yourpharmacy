import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

ThemeData Light_Theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor:Colors.white,
              statusBarIconBrightness: Brightness.dark),
          centerTitle: true,
          backwardsCompatibility: false,
          titleTextStyle: TextStyle(
              color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 20,
          )),
      textTheme: TextTheme(
          headline5: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blue)),


  );
}

ThemeData Dark_Theme() {
  return ThemeData(
      scaffoldBackgroundColor: HexColor('2b2b2b'),
      textTheme: TextTheme(
          bodyText1: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: HexColor('2b2b2b'),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: HexColor('2b2b2b'),
            statusBarIconBrightness: Brightness.light),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
        ),
        backwardsCompatibility: false,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),

  );
}
