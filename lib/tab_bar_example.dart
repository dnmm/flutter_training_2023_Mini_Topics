import 'package:flutter/material.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab Bar Example"),
      ),
      body: DefaultTabController(
          length: 2,
          child: Container(
            color: Colors.blue,
            child: const Column(
              children: [
                TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.image),
                  ),
                  Tab(
                    icon: Icon(Icons.card_giftcard),
                  ),
                ]),
                Expanded(
                    child: TabBarView(
                  children: [
                    ImageTab(),
                    CardTab(),
                  ],
                ))
              ],
            ),
          )),
    );
  }
}

class ImageTab extends StatelessWidget {
  const ImageTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset(
        "assets/images/sample.jpeg",
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      ),
    ));
  }
}

class CardTab extends StatelessWidget {
  const CardTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "this is sample card",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
