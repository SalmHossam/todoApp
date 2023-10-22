import 'package:flutter/material.dart';
class MyThemeData{
  static Color primaryColor=Color (0xFFDFECDB);
  static Color darkprimaryColor=Color (0xFF060E1E);
  static Color blackColor=Color (0xFF242424);
  static Color blue=Color(0xff5D9CEC);
  static Color yellow=Color(0xffFACC1D);
  static ThemeData lightTheme=ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.white,
          onPrimary: blackColor,
          secondary: blackColor,
          onSecondary: blackColor,
          error: Colors.red,
          onError: Colors.white,
          background: primaryColor,
          onBackground: Colors.black,
          surface: primaryColor,
          onSurface: Colors.white),
      scaffoldBackgroundColor:Colors.transparent,
      appBarTheme: AppBarTheme(
          color:Colors.transparent,
          elevation: 0.0,
          centerTitle: true
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        backgroundColor: primaryColor,
        unselectedItemColor: Colors.white,

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