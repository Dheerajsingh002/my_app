import 'package:flutter/material.dart';

class DatePickers extends StatefulWidget {
  const DatePickers({super.key});

  @override
  State<DatePickers> createState() => _DatePickers();
}

class _DatePickers extends State<DatePickers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Date Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Date Pickker",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2021),
                      lastDate: DateTime(2024));
                  if (picked != null) {
                    print("${picked.day}.${picked.month}");
                  }
                },
                child: Text(
                  "Click ME for generating Date Picker",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )),
            Text(
              "Time Pickker",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? pickeds = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.input);
                  if (pickeds != null) {
                    print("${pickeds.hour}.${pickeds.minute}");
                  }
                },
                child: Text(
                  "Click ME for generating Time Picker",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ))
          ],
        ),
      ),
    );
  }
}
