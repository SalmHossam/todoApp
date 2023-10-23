import 'package:flutter/material.dart';
import 'colors.dart';
class MyThemeData{
  static ThemeData lightTheme=ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: Colors.white,
          secondary: blue,
          onSecondary: blackColor,
          error: Colors.red,
          onError: Colors.white,
          background: primaryColor,
          onBackground: Colors.black,
          surface: primaryColor,
          onSurface: Colors.white),
      scaffoldBackgroundColor:primaryColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.white,


      )
  );
  static ThemeData darkTheme=ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.white,
          onPrimary: blackColor,
          secondary: yellow,
          onSecondary: blackColor,
          error: Colors.red,
          onError: Colors.white,
          background: yellow,
          onBackground: Colors.white,
          surface: darkprimaryColor,
          onSurface: Colors.white),

      scaffoldBackgroundColor:Colors.transparent,
      appBarTheme: AppBarTheme(
          color:Colors.transparent,
          elevation: 0.0,
          centerTitle: true
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color(0xffFACC1D),
        backgroundColor: darkprimaryColor,
        unselectedItemColor: Colors.white,

      )
  );
}