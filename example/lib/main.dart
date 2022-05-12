import 'package:flutter/material.dart';
import 'package:flutter_weather_forecast/flutter_weather_forecast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
              stationNo: '32',
            ),
            WeatherForecast(
              stationNo: '36',
            ),
            WeatherForecast(
              stationNo: '76',
            ),
            WeatherForecast(
              stationNo: '11',
            ),
            WeatherForecast(
              stationNo: '43',
            ),
          ],
        ),
      ),
    );
  }
}
