import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_state.dart'; // Import the file where you defined AppState

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Global State Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Username: ${Provider.of<AppState>(context).username}',
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              onChanged: (value) {
                Provider.of<AppState>(context, listen: false)
                    .setUsername(value);
              },
              decoration: InputDecoration(labelText: 'Enter Username'),
            ),
          ],
        ),
      ),
    );
  }
}
