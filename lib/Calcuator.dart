import 'package:flutter/material.dart';
import 'package:my_app/CounterButton.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _Calculator();
}

class _Calculator extends State<Calculator> {
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: no1controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: no2controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      var no1 = int.parse(no1controller.text.toString());
                      var no2 = int.parse(no1controller.text.toString());
                      var add = no1 + no2;
                      result = "Addition of no1 and no2 is $add";
                      setState(() {});
                    },
                    child: Text("ADD")),
                ElevatedButton(
                    onPressed: () {
                      var no1 = int.parse(no1controller.text.toString());
                      var no2 = int.parse(no1controller.text.toString());
                      var Sub = no1 - no2;
                      result = "Subtraction of no1 and no2 is $Sub";
                      setState(() {});
                    },
                    child: Text("SUB")),
                ElevatedButton(
                    onPressed: () {
                      var no1 = int.parse(no1controller.text.toString());
                      var no2 = int.parse(no1controller.text.toString());
                      var mul = no1 * no2;
                      result = "Multiplication of no1 and no2 is $mul";
                      setState(() {});
                    },
                    child: Text("Multiply")),
                ElevatedButton(
                    onPressed: () {
                      var no1 = int.parse(no1controller.text.toString());
                      var no2 = int.parse(no1controller.text.toString());
                      var div = no1 / no2;
                      result =
                          "Division of no1 and no2 is ${div.toStringAsFixed(2)}";
                      setState(() {});
                    },
                    child: Text("Division")),
              ],
            ),
          ),
          Text(
            result,
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Counter()));
              },
              child: Text("Switch to Another Page"))
        ]),
      ),
    );
  }
}
