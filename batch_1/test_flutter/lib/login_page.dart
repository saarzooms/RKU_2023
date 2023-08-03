import 'dart:developer';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController uname = TextEditingController();

  TextEditingController pwd = TextEditingController();

  String result = '';
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(16),
          color: Colors.white54,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: uname,
                decoration: InputDecoration(
                  label: Text('Username'),
                  prefix: Icon(Icons.person),
                ),
              ),
              TextField(
                controller: pwd,
                obscureText: !isVisible,
                decoration: InputDecoration(
                  label: Text('Password'),
                  prefix: Icon(Icons.key),
                  suffix: IconButton(
                    onPressed: () {
                      isVisible = !isVisible;
                      setState(() {});
                    },
                    icon: Icon(
                        isVisible ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (uname.text == pwd.text)
                    result = 'Both are same';
                  else
                    result = 'Both are different';

                  setState(() {});
                  print(result);
                },
                child: Text('Login'),
              ),
              Text(result),
            ],
          )),
    );
  }
}
