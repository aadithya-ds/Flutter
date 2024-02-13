import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String locationMessage = 'current location of User';

  late String lat;
  late String long;

  Future<Position> getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permisions are denied');
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Request cant be processed . Location permissons are disabled permenantely');
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Current Location",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        toolbarHeight: 80,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
          child: Column(
        children: [
          Text("Current location is : "),
          Text(locationMessage),
          ElevatedButton(
              onPressed: () {
                getCurrentLocation().then((value) {
                  lat = '${value.latitude}';
                  long = '${value.longitude}';
                  setState(() {
                    locationMessage = 'Latitude : $lat \n Longitude : $long';
                  });
                });
              },
              child: const Text("Get Location"))
        ],
      )),
    ));
  }
}
