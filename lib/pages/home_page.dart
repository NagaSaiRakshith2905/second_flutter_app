import 'package:flutter/material.dart';
import 'package:second_app/widgets/home_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String name = "NSR";
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
        centerTitle: true,
        elevation: 999,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text("Welcome $name"),
      ),
      drawer: const HomeDrawer(),
      floatingActionButton: FloatingActionButton(
        elevation: 999,
        shape: const CircleBorder(),
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
