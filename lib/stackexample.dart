import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.blue, width: 10)),
        ),
        Positioned(
          top: 100,
          left: 50,
          child: Container(width: 200, height: 200, color: Colors.red),
        ),
        Positioned(
          top: 120,
          left: 70,
          child: Container(width: 200, height: 200, color: Colors.amber),
        ),
        Positioned(
          top: 150,
          left: 90,
          child: Container(width: 200, height: 200, color: Colors.green),
        ),
        Positioned(
          bottom: 100,
          right: 50,
          child: Container(width: 200, height: 200, color: Colors.green),
        ),
        const Positioned(
            bottom: 250,
            right: 100,
            child: Text(
              "Hello",
              style: TextStyle(fontSize: 24, color: Colors.white),
            )),
      ],
    ));
  }
}
