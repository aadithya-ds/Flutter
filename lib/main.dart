import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          toolbarHeight: 90,
          title: const Text(
            "Grid View with Images",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: 20, // Number of images
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://photographylife.com/wp-content/uploads/2014/09/Nikon-D750-Image-Samples-2.jpg',
                        fit: BoxFit.cover,
                      )
                      // Image.asset(
                      //'assets/the.jpeg',
                      //fit: BoxFit.cover,
                      //),
                      ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
