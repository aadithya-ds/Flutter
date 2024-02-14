import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Card Example"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.yellow,
                shadowColor: Colors.green,
                elevation: 10,
                child: ListTile(
                  autofocus: true,
                  leading: Icon(Icons.music_note_rounded,
                      size: 40, color: Colors.red),
                  title: const Text("MyApp"),
                  subtitle: const Text("Card example"),
                ),
              ),
              SizedBox(
                  child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 5)),
                child: Image.network(
                  'https://th.bing.com/th?id=OIP.o_Pgegeyw8ZXnVJq6-x8PwHaCX&w=200&h=63&rs=1&qlt=80&o=6&pid=3.1',
                  fit: BoxFit.cover,
                  height: 100, // set your height
                  width: 200, // and width here
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
