import 'package:flutter/material.dart';
import 'package:todo/App_theme_data.dart';
import 'package:todo/home_screen.dart';
import 'package:todo/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: AppThemeData.light_mode,
      // darkTheme: ,
       themeMode: ThemeMode.light,
       initialRoute: SplashScreen.routeName ,
       routes: {
        SplashScreen.routeName:(context)=> SplashScreen(),
         HomeScreen.routeName:(context)=> HomeScreen()
       },
    );
  }
}
