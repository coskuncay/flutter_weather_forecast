import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/flutter_weather_forecast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Weather Forecast by @coskuncay'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            WeatherForecast(),
            WeatherForecast(
              stationNo: '93201',
            ),
            WeatherForecast(
              stationNo: '93401',
            ),
            WeatherForecast(
              stationNo: '93601',
            ),
            WeatherForecast(
              stationNo: '90101',
            ),
            WeatherForecast(
              stationNo: '94301',
            ),
          ],
        ),
      ),
    );
  }
}
