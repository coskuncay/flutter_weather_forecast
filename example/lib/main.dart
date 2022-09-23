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
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              WeatherForecast(
                stationNo: '06',
                image: const ExactAssetImage(
                  'assets/images/ankara.jpg',
                ),
                colorFilter:
                    const ColorFilter.mode(Colors.grey, BlendMode.modulate),
                keyColor: Colors.white,
                timeColor: Colors.white,
                valueColor: Colors.white,
                statusColor: Colors.white,
                weatherColor: Colors.white,
                refreshColor: Colors.white,
              ),
              WeatherForecast(
                stationNo: '32',
              ),
              WeatherForecast(
                stationNo: '34',
                image: const ExactAssetImage(
                  'assets/images/weather_background.png',
                ),
                boxFit: BoxFit.cover,
                keyColor: Colors.white,
                timeColor: Colors.white,
                valueColor: Colors.white,
                statusColor: Colors.white,
                weatherColor: Colors.white,
                refreshColor: Colors.white,
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
      ),
    );
  }
}
