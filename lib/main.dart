import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            toolbarHeight: 90,
            title: Text(
              "Listview.builder",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.green,
            bottomOpacity: 0.5,
          ),
          body: Center(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.menu),
                    trailing: Text(
                      "Trailing",
                      style: TextStyle(color: Colors.red),
                    ),
                    title: Text("title $index"),
                    tileColor: Colors.yellow,
                    contentPadding: EdgeInsets.all(10),
                    horizontalTitleGap: 10,
                  );
                }),
          ),
        ));
  }
}
