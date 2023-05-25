import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogExample extends StatelessWidget {
  const AlertDialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Expanded Layout'),
        ),
        body: Center(
          child: CupertinoButton(
            child: const Text("Show alert dialog"),
            onPressed: () {
              showCupertinoDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoAlertDialog(
                      title: const Text("alert dialog tile"),
                      content: const Text("this is the content"),
                      actions: [
                        CupertinoDialogAction(
                          child: const Text("Cancel"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        CupertinoDialogAction(
                          child: const Text("OKAY"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    );
                  });
            },
          ),
        ));
  }
}
