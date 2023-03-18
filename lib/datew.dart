import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class My extends StatefulWidget {
  const My({super.key});

  @override
  State<My> createState() => _My();
}

class _My extends State<My> {
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Date and Time Show",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent),
            ),
            Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 11,
                        color: Colors.grey,
                      )
                    ]),
                child: Center(
                    child: Text(
                  "${time.day}.${time.month}.${time.year}",
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ))),
            RichText(
              text: TextSpan(),
            ),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.amazon,
                  size: 50,
                ),
                Container()
              ],
            )
          ],
        ),
      ),
    );
  }
}
