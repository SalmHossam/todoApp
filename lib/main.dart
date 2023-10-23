import 'package:flutter/material.dart';
import 'package:todo_app/style/MyTheme.dart';
import 'layout/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routeName,
      routes: {
        Home.routeName:(context)=>Home(),


      },
       theme: MyThemeData.lightTheme,
       //darkTheme: ThemeData.dark(),

    );
  }
}


