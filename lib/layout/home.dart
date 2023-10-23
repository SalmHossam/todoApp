import 'package:flutter/material.dart';
import 'package:todo_app/screens/tasks/tasksTab.dart';
import 'package:todo_app/style/MyTheme.dart';
import 'package:calendar_timeline/calendar_timeline.dart';

import '../screens/settings/settingsTab.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static const String routeName='Home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;
  List<Widget>Screens=[taskTab(),settingsTab()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List',style: TextStyle(fontSize: 30),),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        elevation: 0,
      ),
      body: Screens[index],
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).colorScheme.onPrimary,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onTap: (value) {
            index=value;
            setState(() {
            });
          },
            currentIndex: index,
            items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_list.png'),size: 33),label:""),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_settings.png'),size: 33,),label:"")
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor:Theme.of(context).colorScheme.secondary ,
        onPressed: () {  },),

    );
  }
}
