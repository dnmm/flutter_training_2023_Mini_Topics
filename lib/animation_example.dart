import 'package:flutter/material.dart';

class AnimationExample extends StatefulWidget {
  const AnimationExample({super.key});

  @override
  State<AnimationExample> createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample> {
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8.0);

  void _animateContainer() {
    setState(() {
      _width = _width == 100.0 ? 200.0 : 100.0;
      _height = _height == 100.0 ? 200.0 : 100.0;
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
      _borderRadiusGeometry =
          _borderRadiusGeometry == BorderRadius.circular(8.0)
              ? BorderRadius.circular(50.0)
              : BorderRadius.circular(8.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Animation Example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                    color: _color, borderRadius: _borderRadiusGeometry),
                child: Image.asset(
                  "assets/sample.png",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: _animateContainer, child: const Text("Animate"))
            ],
          ),
        ));
  }
}
