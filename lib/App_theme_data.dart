import 'package:flutter/material.dart';
import 'package:todo/AppColors.dart';

class AppThemeData{
  static  ThemeData light_mode=ThemeData(
     appBarTheme: AppBarTheme(
       color: Appcolors.blueColor,
       // titleTextStyle: TextStyle(
       //   fontFamily: "Poppins",
       //   fontWeight: FontWeight.w700,
       //   fontSize: 42,
       //   height: 33,
       //   color: Appcolors.whiteColor,
       //   backgroundColor: Appcolors.blackFontColor
       // )

     ),
    //scaffoldBackgroundColor: Appcolors.primary_light
  );
  ThemeData dark_mode=ThemeData(

  );
}