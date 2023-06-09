import 'package:flutter/material.dart';
import 'package:flutter_mini_topics/alert_dialog.dart';
import 'package:flutter_mini_topics/animation_example.dart';
import 'package:flutter_mini_topics/bar_chart_example.dart';
import 'package:flutter_mini_topics/calender_example.dart';
import 'package:flutter_mini_topics/expanded_form.dart';
import 'package:flutter_mini_topics/login_screen.dart';
import 'package:flutter_mini_topics/progress_bar_example.dart';
import 'package:flutter_mini_topics/radio_button_example.dart';
import 'package:flutter_mini_topics/sliver_screen.dart';
import 'package:flutter_mini_topics/stack_example.dart';
import 'package:flutter_mini_topics/tab_bar_example.dart';
import 'package:flutter_mini_topics/table_example.dart';

class ExampleExpandedLayout extends StatelessWidget {
  const ExampleExpandedLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Expanded Layout'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StackExample()));
                  },
                  child: const Text("Stack"),
                )),
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExampleForm()));
                  },
                  child: const Text("Forms"),
                ))
              ],
            )),
            Expanded(
              child: Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AlertDialogExample()));
                      },
                      child: const Text("Alert Dialog"))),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TabBarExample()));
                    },
                    child: const Text("Tab Bar Example")),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnimationExample()));
                    },
                    child: const Text("Animation Example")),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const MyProgressBarExample()));
                    },
                    child: const Text("Progress Bar Example")),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MyRadioButtonExample()));
                  },
                  child: const Text("Radio Button Example"),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BarChartExample()));
                    },
                    child: const Text("Chart Example")),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const Text("Networking Example")),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>const  TableExample()));
                    },
                    child: const Text("Table Example")),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>const  SilverScreen()));
                    },
                    child: const Text("Sliver Example")),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CalenderExample()));
                    },
                    child: const Text("Calender Example")),
              ),
            ),
          ],
        ));
  }
}
