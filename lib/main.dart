import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      routes: {
        "mainn": (context) => const Login(),
        "mouty": (context) => const mouty(),
        "oops": (context) => const OOPS(),
      },
      initialRoute: "mainn",
      debugShowCheckedModeBanner: false,
      home: const Login()));
}

class mouty extends StatefulWidget {
  const mouty({super.key});

  @override
  State<mouty> createState() => _moutyState();
}

class _moutyState extends State<mouty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Colors.green,
          child: ElevatedButton(
            child: const Text("back"),
            onPressed: () {
              Navigator.pushNamed(context, "mainn");
            },
          ),
        ),
      ),
    );
  }
}

class OOPS extends StatefulWidget {
  const OOPS({super.key});

  @override
  State<OOPS> createState() => _OOPSState();
}

class _OOPSState extends State<OOPS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.red,
        child: Center(
          child: ElevatedButton(
            child: const Text("back"),
            onPressed: () {
              Navigator.pushNamed(context, "mainn");
            },
          ),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController userController;
  late TextEditingController pwdController;
  login() {
    String user = userController.text;
    String pwd = pwdController.text;
    if (user == "abdou" && pwd == "abdou") {
      userController.clear();
      pwdController.clear();
      Navigator.pushNamed(context, "mouty");
    } else {
      userController.text = "error";
      pwdController.text = "error";
      Navigator.pushNamed(context, "oops");
    }
  }

  @override
  void initState() {
    super.initState();
    userController = TextEditingController();
    pwdController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black12,
            height: 250,
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
                      child: const Text("LOGIN")),
                ]),
          ),
        ),
      ),
    );
  }
}
