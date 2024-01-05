import 'package:clima/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            Location location = Location();
            await location.getCurrentLocation();
            print(location.latitude);
            print(location.longitude);
          },
          child: Text("Get Location"),
        ),
      ),
    );
  }
}
