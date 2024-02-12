import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "App Drawer",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            backgroundColor: Colors.deepOrangeAccent,
          ),
          body: const Center(
            child: Text(
              "Drawer Example",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          drawer: const Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Sample"),
                  accountEmail: Text("Sample@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
