import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  String value = "Test";

  void changeContent() {
    setState(() {
      // Toggle between "Test" and "Stateful Widget"
      value = (value == "Test") ? "Stateful Widget" : "Test";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('$value', style: TextStyle(fontSize: 24)),
              FloatingActionButton(
                onPressed: changeContent,
                child: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
