import 'package:flutter/material.dart';

class alertExample extends StatelessWidget {
  const alertExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Example"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Show AlertDialog
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Alert Dialog'),
                    content: Text('This is an example of an AlertDialog.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Show AlertDialog'),
          ),
          ElevatedButton(
              child: const Text(
                "Go to card widget",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {Navigator.of(context).pushNamed("/card")}),
          ElevatedButton(
              child: const Text(
                "Go to hero widget",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {Navigator.of(context).pushNamed("/hero")})
        ],
      )),
    );
  }
}
