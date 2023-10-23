import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
class taskTab extends StatelessWidget {
  const taskTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarTimeline(
          initialDate: DateTime(2023,10,22),
          firstDate: DateTime(2023, 1, 1),
          lastDate: DateTime(2024, 12, 31),
          onDateSelected: (date) => print(date),
          leftMargin: 20,
          monthColor: Colors.blueGrey,
          dayColor: Colors.teal[200],
          activeDayColor: Colors.white,
          activeBackgroundDayColor: Colors.redAccent[100],
          dotsColor: Color(0xFF333A47),
          selectableDayPredicate: (date) => date.day != 23,
          locale: 'en_ISO',
        )
      ],
    );
  }
}
