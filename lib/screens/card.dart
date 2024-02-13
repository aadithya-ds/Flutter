import 'package:flutter/material.dart';

class cardExample extends StatelessWidget {
  const cardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Example"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.book),
              title: Text('Card Example'),
              subtitle: Text('This is a card widget'),
            ),
          ),
          ElevatedButton(
              child: const Text(
                "Go to gridview widget",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {Navigator.of(context).pushNamed("/grid")}),
          ElevatedButton(
              child: const Text(
                "Go to Alert  widget",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {Navigator.of(context).pushNamed("/alert")})
        ],
      )),
    );
  }
}
