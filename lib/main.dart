import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Render Error"),
        backgroundColor: Colors.teal[700],
      ),
      //if you remove the singlechildscrollview it will have overflow error
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text("Tile 1"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("this is subtitle"),
            ),
            ListTile(
              title: Text("Tile 1"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("this is subtitle"),
            ),
            ListTile(
              title: Text("Tile 1"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("this is subtitle"),
            ),
            ListTile(
              title: Text("Tile 1"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("this is subtitle"),
            ),
            ListTile(
              title: Text("Tile 1"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("this is subtitle"),
            ),
            ListTile(
              title: Text("Tile 1"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("this is subtitle"),
            ),
            ListTile(
              title: Text("Tile 1"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("this is subtitle"),
            ),
            ListTile(
              title: Text("Tile 1"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("this is subtitle"),
            ),
            ListTile(
              title: Text("Tile 1"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("this is subtitle"),
            ),
            ListTile(
              title: Text("Tile 1"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("this is subtitle"),
            ),
            ListTile(
              title: Text("Tile 1"),
              horizontalTitleGap: 5,
              autofocus: true,
              subtitle: Text("this is subtitle"),
            )
          ],
        ),
      ),
    ));
  }
}
