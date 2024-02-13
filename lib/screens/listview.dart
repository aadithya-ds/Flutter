import 'package:flutter/material.dart';

class listExample extends StatelessWidget {
  const listExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Example"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text('List Item 1'),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text('List Item 2'),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text('List Item 3'),
                ),
              ],
            ),
          ),
          ElevatedButton(
              child: const Text(
                "Go to stack widget",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {Navigator.of(context).pushNamed("/stack")}),
          ElevatedButton(
              child: const Text(
                "Go to Gridview widget",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {Navigator.of(context).pushNamed("/grid")})
        ],
      )),
    );
  }
}
