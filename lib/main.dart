import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<String> fetchData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<void> postData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'title': 'Hello',
        'body': 'This is a sample post.',
        'userId': 1,
      }),
    );

    if (response.statusCode == 201) {
      // Post request was successful
      print('Post request successful');
      print('Response: ${response.body}');
      // Show a message after posting successfully
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Posted successfully!'),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      // Post request failed
      print('Post request failed with status: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Store'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Container(
                child: Text(
                  'Error: ${snapshot.error}',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              );
            } else {
              return Column(
                children: [
                  Text(
                    'Response: ${snapshot.data}',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: postData,
                    child: Text("Post Data"),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
