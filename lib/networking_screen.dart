import 'package:flutter/material.dart';
import 'package:flutter_mini_topics/api/user_api.dart';
import 'package:flutter_mini_topics/model/data_model.dart';

class NetworkingScreen extends StatelessWidget {
  const NetworkingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Networking Example Screen"),
        ),
        body: FutureBuilder<List<DataModel>>(
          future: UserApi.fetchUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              final users = snapshot.data!;
              return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return ListTile(
                      title: Text(user.username),
                      subtitle: Text(user.email.toString()),
                    );
                  });
            }
          },
        ));
  }
}
