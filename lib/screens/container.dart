import 'package:flutter/material.dart';

class containerExample extends StatelessWidget {
  const containerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Example"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(16),
            child: const Center(
              child: Text(
                'Container',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          ElevatedButton(
              child: const Text(
                "Go to Row widget",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {Navigator.of(context).pushNamed("/row")})
        ],
      )),
    );
  }
}
