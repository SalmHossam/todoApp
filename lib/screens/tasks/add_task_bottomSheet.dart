import 'package:flutter/material.dart';
import 'package:todo_app/style/MyTheme.dart';
import 'package:todo_app/style/colors.dart';

class AddTaskBottomSheet extends StatefulWidget {

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  var titleController = TextEditingController();

  var discriptionController = TextEditingController();

  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [

          Text("Add New Task",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          SizedBox(height: 20,),
          TextFormField(
            controller: titleController,
            decoration: InputDecoration(

                label: Text("Task Title"),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color: blue
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color: blue
                    )
                )
            ),),
          SizedBox(height: 40,),
          TextFormField(
            controller: discriptionController,
            decoration: InputDecoration(

                label: Text("Task Description"),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color: blue
                    )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                        color: blue
                    )
                )
            ),),
          SizedBox(height: 10,),
          Text("Select Date",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          SizedBox(height: 10,),
          InkWell(
            onTap: () {
              selectDate(context);
            },
            child: Text(selectedDate.toString().substring(0, 10), style:
            TextStyle(
                color: blue, fontSize: 15, fontWeight: FontWeight.w300)),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: blue),
            child:
            Text("Add Task"),

          )
        ],
      ),
    );
  }

  selectDate(BuildContext context) async {
    DateTime? chosenDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: blue, // header background color
              onPrimary: Colors.white, // header text color
              onSurface: blue, // body text color
            ),
          ),
          child: child??Container(),
        );
      },
    );

    if (chosenDate == null) {
      return;
    } else {
      selectedDate = chosenDate;
      setState(() {});
    }
  }
}

