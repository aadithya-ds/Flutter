import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Header and Title Example'),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding:
              EdgeInsets.only(top: 16.0), // Adjust the top padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Header Section
              Container(
                padding: EdgeInsets.all(20.0),
                width: 400,
                color: Colors.blue,
                child: Text(
                  'Header',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              // Title Section
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Title',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.amber),
                ),
              ),
              // Description Section
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'This is a brief description of the content or the context in which the information is provided. You can add more details here.',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              // Info Section
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'This is the information section where you can add more details.',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
