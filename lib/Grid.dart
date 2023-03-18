import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _Grid();
}

class _Grid extends State<Grid> {
  var arr = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.indigo,
    Colors.pink,
    Colors.blue,
    Colors.yellow,
    Colors.yellow,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Griid"),
        backgroundColor: Colors.redAccent,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(color: arr[0]),
          Container(color: arr[1]),
          Container(color: arr[2]),
          Container(color: arr[3]),
          Container(color: arr[4]),
          Container(color: arr[5]),
          Container(color: arr[6]),
          Container(color: arr[7]),
        ],
      ),
    );
  }
}
