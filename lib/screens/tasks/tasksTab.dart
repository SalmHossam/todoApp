import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screens/tasks/task_item.dart';
class taskTab extends StatelessWidget {
  const taskTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(


      children: [
        CalendarTimeline(
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(Duration(days:365)),
          lastDate: DateTime.now().add(Duration(days:365)),
          onDateSelected: (date) => print(date),
          leftMargin: 20,
          monthColor: Colors.blueGrey,
          dayColor: Colors.teal[200],
          activeDayColor: Colors.white,
          activeBackgroundDayColor: Colors.redAccent[100],
          dotsColor: Color(0xFF333A47),
          //selectableDayPredicate: (date) => true,
          locale: 'en_ISO',
        ),
        Expanded(
          child: ListView.builder(itemBuilder:(context,index){
            return TaskItem();
          },itemCount: 10,),
        )
      ],
    );
  }
}
