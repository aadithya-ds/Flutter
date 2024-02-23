import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_state.dart'; // Import the file where you defined AppState
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Flutter Global State Example',
        home: HomePage(),
      ),
    );
  }
}
