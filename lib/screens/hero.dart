import 'package:flutter/material.dart';

class heroExample extends StatelessWidget {
  const heroExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hero Example"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(children: [
        Hero(
          tag: 'hero-tag',
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ),
        ElevatedButton(
            child: const Text(
              "Go to alert widget",
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () => {Navigator.of(context).pushNamed("/alert")}),
      ])),
    );
  }
}
