import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.amber.shade200,
      ),
      body: Center(
        child: TextButton(
          child: const Text('Click me'),
          onPressed: () => {
            Navigator.pushNamed(context, '/bluetooth', arguments: {
              "name": "Bijendra",
              "rollNo": 65210,
              "n": [1, 2, 3]
            })
          },
        ),
      ),
    );
  }
}
