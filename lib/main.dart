import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold Widget
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // App Bar
        appBar: AppBar(
          title: Text('My App'),
        ),
        // Body Content
        body: Center(
          child: Text('Hello, Flutter!'),
        ),
        // Bottom Navigation (optional)
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 50.0,
            color: Colors.blue,
            child: Center(child: Text('Bottom Navigation')),
          ),
        ),
      ),
    );
  }
}
