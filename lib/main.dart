import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StreamController<String> streamController = StreamController();
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Stream Controller"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<String>(
                stream: streamController.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    String output = snapshot.data.toString();
                    return Text(output.toUpperCase(),
                        style: const TextStyle(fontSize: 24));
                  } else {
                    return const Text("No data",
                        style: TextStyle(fontSize: 24));
                  }
                }),
            const SizedBox(height: 20.0),
            SizedBox(
                width: 200,
                child: TextField(
                    controller: textEditingController,
                    decoration: const InputDecoration(
                        hintText: "Enter text",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))))),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  String text = textEditingController.text;
                  streamController.add(text);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow),
                ),
                child: const Text("Ok"))
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
