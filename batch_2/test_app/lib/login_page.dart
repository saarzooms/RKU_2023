import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernmController = TextEditingController();

  TextEditingController pwdController = TextEditingController();

  String msg = 'initial values';

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: usernmController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),
                ),
                TextField(
                  controller: pwdController,
                  obscureText: !isVisible,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefix: Icon(Icons.key),
                    suffix: IconButton(
                      onPressed: () {
                        isVisible = !isVisible;
                        setState(() {});
                      },
                      icon: Icon(
                          isVisible ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print(usernmController.text);
                    print(pwdController.text);
                    if (usernmController.text == pwdController.text)
                      msg = 'both are same';
                    else
                      msg = 'both are different';

                    setState(() {});

                    print(msg);
                  },
                  child: Text('Login'),
                ),
                Text(msg),
              ],
            ),
          ),
        ));
  }
}
