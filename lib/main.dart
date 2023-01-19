import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Login()));
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController userController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  login() {
    print("username ${userController.text} password ${pwdController.text} ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.red,
            height: 200,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    controller: userController,
                    decoration: const InputDecoration(
                      hintText: "username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                    ),
                  ),
                  TextField(
                    controller: pwdController,
                    decoration: const InputDecoration(
                      hintText: "password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2))),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        login();
                      },
                      child: const Text("LOGIN"))
                ]),
          ),
        ),
      ),
    );
  }
}
