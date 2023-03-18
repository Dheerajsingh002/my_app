import 'package:flutter/material.dart';
import 'package:my_app/Grid.dart';
import 'package:my_app/Stack.dart';
import 'package:my_app/datepickers.dart';
import 'package:my_app/datew.dart';
import 'package:my_app/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Stacks(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const arr = ["Dheeraj", "Mohan", "Rahul", "Sohan"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 400,
            child: ListTile(
              iconColor: Colors.red,
              hoverColor: Colors.green,
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text(arr[index]),
              subtitle: Text("hello"),
              trailing: Icon(Icons.person),
            ),
          );
        },
        itemCount: 4,
      ),
      // body: Container(
      //   height: 400,
      //   width: 300,
      //   color: Colors.red,
      //   child: Text("hello Dheeraj",style: TextStyle(fontSize: 30,color: Colors.yellow),),
      // )
      // //
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
