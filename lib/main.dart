import 'package:common_widgets/screens/alertbox.dart';
import 'package:common_widgets/screens/card.dart';
import 'package:common_widgets/screens/gridview.dart';
import 'package:common_widgets/screens/hero.dart';
import 'package:flutter/material.dart';
import 'screens/container.dart';
import 'screens/row.dart';
import 'screens/stack.dart';
import "screens/listview.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (RouteSettings routeSetting) {
        switch (routeSetting.name) {
          case "/":
            return MaterialPageRoute(
                builder: (context) => const containerExample());

          case "/row":
            return MaterialPageRoute(builder: (context) => const rowExample());

          case "/stack":
            return MaterialPageRoute(
                builder: (context) => const stackExample());

          case "/list":
            return MaterialPageRoute(builder: (context) => const listExample());

          case "/grid":
            return MaterialPageRoute(builder: (context) => const gridExample());

          case "/card":
            return MaterialPageRoute(builder: (context) => const cardExample());
          case "/alert":
            return MaterialPageRoute(
                builder: (context) => const alertExample());

          case "/hero":
            return MaterialPageRoute(builder: (context) => const heroExample());
        }
      },
    );
  }
}
