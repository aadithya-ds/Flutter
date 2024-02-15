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
          centerTitle: true,
          backgroundColor: Colors.red,
          toolbarHeight: 90,
          elevation: 10,
          title: const Text(
            "Row and Column",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Column data from top to bottom"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    TextButton(
                      onPressed: () {},
                      child: Text("Row item1"),
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(fontSize: 16),
                        primary: Colors.white, // Text color
                        backgroundColor: Colors.green, // Background color
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {},
                      child: Text("Row item1"),
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(fontSize: 16),
                        primary: Colors.white, // Text color
                        backgroundColor: Colors.orange[400], // Background color
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
