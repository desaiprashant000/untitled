import 'package:cupertino_date_textbox/cupertino_date_textbox.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CupertinoDateTextBox(
            onDateChange: (){

            },
          initialValue: DateTime.now(),
          hintText: 'Hint Text'),
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
          ),
        ],
      ),
    );
  }
}
