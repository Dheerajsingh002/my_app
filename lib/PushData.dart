import 'package:flutter/material.dart';
import 'package:my_app/ShowData.dart';

class Pushs extends StatefulWidget {
  const Pushs({super.key});

  @override
  State<Pushs> createState() => _Pushs();
}

class _Pushs extends State<Pushs> {
  var ncontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            "Provide Data",
            style: TextStyle(color: Colors.white),
          )),
      body: Column(children: [
        TextField(controller: ncontroller),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Shows(ncontroller.text.toString())));
            },
            child: Text("Provide Data"))
      ]),
    );
  }
}
