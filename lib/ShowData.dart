import 'package:flutter/material.dart';

class Shows extends StatelessWidget {
  var message;
  Shows(this.message);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            "Show Data",
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
        child: Text(
          "Welcome,$message",
          style: TextStyle(
              color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
