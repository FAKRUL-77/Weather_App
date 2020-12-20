import 'package:flutter/material.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatefulWidget {
  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  int temperature = 0;
  String location = 'Dhaka';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/clear.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Center(
                    child: Text(
                      temperature.toString() + '°C',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60.0,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      location,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 300,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                      decoration: InputDecoration(
                          hintText: 'Search With Location',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
