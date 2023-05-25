import 'package:flutter/material.dart';

class MyProgressBarExample extends StatefulWidget {
  const MyProgressBarExample({super.key});

  @override
  State<MyProgressBarExample> createState() => _MyProgressBarExampleState();
}

class _MyProgressBarExampleState extends State<MyProgressBarExample> {
  double _progressValue = 0.0;

  double _seekBarValue = 0.0;
  void simulateProgress() {
    setState(() {
      _progressValue += 0.1;
      if (_progressValue >= 1.0) {
        _progressValue = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Progress Bar Example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: simulateProgress,
                  child: const Text("Start Progress")),
              const SizedBox(
                height: 20.0,
              ),
              //CircularProgressBarIndicator
              LinearProgressIndicator(
                value: _progressValue,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {}, child: const Text("SeekBar Example")),
              Slider(
                  value: _seekBarValue,
                  min: 0.0,
                  max: 100.0,
                  onChanged: (value) {
                    setState(() {
                      _seekBarValue = value;
                    });
                  }),
              Text(
                "Value :${_seekBarValue.toStringAsFixed(2)}",
                style: const TextStyle(fontSize: 16.0),
              )
            ],
          ),
        ));
  }
}
