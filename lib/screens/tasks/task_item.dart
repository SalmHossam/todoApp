import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 8),
      child: Card(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child:Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 3,
                decoration: BoxDecoration(
                  color: Colors.blue
                ),

              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Task Title"),
                  Text("Task Description")
                ],
              ),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.done_outline_rounded))
            ],
          ),
        )

      ),
    );
  }
}
