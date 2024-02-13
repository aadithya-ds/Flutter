import 'package:flutter/material.dart';
import 'route.dart';

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
              return MaterialPageRoute(builder: (context) => const FirstPage());

            case "/second":
              return MaterialPageRoute(
                  builder: (context) => const SecondPage());

            case "/third":
              return MaterialPageRoute(builder: (context) => const ThirdPage());

            default:
              return MaterialPageRoute(
                  builder: (context) => Scaffold(
                        body: Container(
                          alignment: Alignment.center,
                          child: const Text("Unknown route"),
                        ),
                      ));
          }
        });
  }
}
