import 'package:flutter/material.dart';

class ExampleExpandedLayout extends StatelessWidget {
  const ExampleExpandedLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Image.asset('assets/images/sample.jpeg'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Stack"),
                )),
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Forms"),
                ))
              ],
            ),
          ],
        )),
        Expanded(
          child: Center(
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("Alert Dialog"))),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomRight,
            child:
                ElevatedButton(onPressed: () {}, child: const Text("Button 2")),
          ),
        )
      ],
    ));
  }
}
