import 'package:flutter/material.dart';
import 'package:flutter_mini_topics/api/user_api.dart';
import 'package:flutter_mini_topics/networking_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String username = "";
  String email = "";
  String password = "";

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      String result = await UserApi.postData(username, email, password);

      if (result == "success") {
        // ignore: use_build_context_synchronously
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const NetworkingScreen()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Post Example"),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a username";
                  }
                  return null;
                },
                onSaved: (value) {
                  username = value!;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a email";
                  }
                  return null;
                },
                onSaved: (value) {
                  email = value!;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a password";
                  }
                  return null;
                },
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: _submitForm, child: const Text("Register"))
            ],
          ),
        ));
  }
}
