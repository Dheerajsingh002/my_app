import 'package:flutter/material.dart';

class Stacks extends StatefulWidget {
  const Stacks({super.key});

  @override
  State<Stacks> createState() => _Stacks();
}

class _Stacks extends State<Stacks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 4,
            bottom: 1,
            right: 1,
            left: 5,
            child: Container(
              height: 500,
              width: 600,
              child: Image.network(
                "https://png.pngtree.com/background/20210717/original/pngtree-blue-purple-neon-cool-light-background-picture-image_1428105.jpg",
                height: 800,
              ),
            ),
          ),
          Container(
            height: 500,
            width: 400,
            child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9mtNnxgRNUqWuts2j9OMpVsgYihGDEJSfGQ&usqp=CAU"),
          ),
          Positioned(
            left: 70,
            top: 95,
            child: Container(
              height: 300,
              width: 200,
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQP7ARHenfnGXcxCIhmDxObHocM8FPbjyaBg&usqp=CAU"),
            ),
          ),
        ],
      ),
    );
  }
}
