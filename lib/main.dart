import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp());
}

// Model class that extends Model
class CounterModel extends Model {
  int _counter = 0;

  // Getter for the counter value
  int get counter => _counter;

  // Method to increment the counter
  void incrementCounter() {
    _counter++;
    // Notify listeners about the change
    notifyListeners();
  }

  void decrementCounter() {
    if (_counter > 0) {
      _counter--;
    }
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScopedModel<CounterModel>(
        model: CounterModel(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scoped Model Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) {
                // Access the counter value from the model
                int counter = model.counter;
                return Text(
                  'Counter: $counter',
                  style: TextStyle(fontSize: 20),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Access the model and call the incrementCounter method
                ScopedModel.of<CounterModel>(context).incrementCounter();
              },
              child: Text('Increment Counter'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Access the model and call the incrementCounter method
                ScopedModel.of<CounterModel>(context).decrementCounter();
              },
              child: Text('Decrement Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
