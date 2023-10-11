import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController email = TextEditingController();
  TextEditingController pwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: email,
                decoration: InputDecoration(
                  labelText: 'Email Id',
                ),
              ),
              TextField(
                controller: pwd,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Register')),
              SizedBox(
                height: 5,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: Text('Already have an account? Login'))
            ],
          ),
        ),
      ),
    ));
  }
}
