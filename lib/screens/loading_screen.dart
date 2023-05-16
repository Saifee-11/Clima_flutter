import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  get latitude => null;
  get timestamp => null;
  get accuracy => null;
  get heading => null;
  get speed => null;
  get speedAccuracy => null;

  void getLocation() async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print(Position(longitude: 10,
        latitude: latitude,
        timestamp: timestamp,
        accuracy: accuracy,
        altitude: latitude,
        heading: heading,
        speed: speed,
        speedAccuracy: speedAccuracy));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Get the current location
          },
          child: const Text('Get Location'),
        ),
      ),
    );
  }
}

