import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     // title: const Text("Rupee Tracker"),
      //     // centerTitle: true,
      //     // elevation: 999,
      //     ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/meditating-doodle-light.png",
                width: 300,
              ),
              const SizedBox(
                height: 32.0,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                  foregroundColor: Colors.white,
                  elevation: 0,
                  minimumSize: const Size(400, 44),
                  textStyle: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                child: const Text("LOGIN"),
              ),
              const SizedBox(
                height: 32.0,
              ),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(400, 44),
                  backgroundColor: Colors.grey[900],
                  textStyle: const TextStyle(
                    fontSize: 18,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                child: const Text("LOGIN"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
