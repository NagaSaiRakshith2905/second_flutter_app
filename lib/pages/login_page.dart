import 'package:flutter/material.dart';
import 'package:second_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  submitHandler(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, Routes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: 8.0,
              ),
              const Text(
                "Welcome to",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Rupee Tracker",
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username can't be empty!";
                        }
                        return null;
                      },
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password can't be empty!";
                        }
                        if (value.length < 6) {
                          return "Minimum 6 characters are required!";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    FilledButton(
                      style: FilledButton.styleFrom(
                        elevation: 0,
                        minimumSize: const Size(400, 44),
                        backgroundColor: Colors.grey[900],
                        textStyle: const TextStyle(
                          fontSize: 18,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () => submitHandler(context),
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
