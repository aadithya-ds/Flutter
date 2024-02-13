import 'package:flutter/material.dart';

class stackExample extends StatelessWidget {
  const stackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Example"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Positioned(
                child: Text(
                  'Stack',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          ElevatedButton(
              child: const Text(
                "Go to row widget",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {Navigator.of(context).pushNamed("/row")}),
          ElevatedButton(
              child: const Text(
                "Go to Listview widget",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {Navigator.of(context).pushNamed("/list")})
        ],
      )),
    );
  }
}
