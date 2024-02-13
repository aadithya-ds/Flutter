import 'package:flutter/material.dart';

class rowExample extends StatelessWidget {
  const rowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Example"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Row(
        children: [
          ElevatedButton(
              onPressed: () => {Navigator.of(context).pushNamed("/")},
              child: Text(
                "Go to container widget",
                style: TextStyle(color: Colors.black),
              )),
          ElevatedButton(
              child: const Text(
                "Go to Stack widget",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {Navigator.of(context).pushNamed("/stack")})
        ],
      )),
    );
  }
}
