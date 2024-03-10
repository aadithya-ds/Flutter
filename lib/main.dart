import 'package:flutter/material.dart';

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
  List<String> largeDataList = List.generate(1000, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memory Management Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Trigger a large data processing function
                processData(largeDataList);
              },
              child: Text('Process Large Data'),
            ),
          ],
        ),
      ),
    );
  }

  // Simulate a function that processes a large amount of data
  void processData(List<String> dataList) {
    // Perform some operation on the data (e.g., filtering)
    List<String> filteredData =
        dataList.where((item) => item.contains('5')).toList();

    // Display the result
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Processed Data'),
          content: Text(filteredData.join('\n')),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    // Dispose of resources when the widget is removed from the widget tree
    super.dispose();
  }
}
