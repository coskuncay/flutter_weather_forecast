# flutter_weather_forecast

> A weather forecast widget for Turkey.Weather data provided by the General Directorate of Meteorology.


## Table of contents
  
- [Demo](#demo) 
- [Installation](#installation)
- [Using](#using)
- [WeatherForecast](#weatherforecast)
- [License](#license)

## Demo

<img src="https://user-images.githubusercontent.com/29631083/168078939-56c3ea7f-f7e5-49f5-953d-5b03b13607be.jpg" width="300"/></a>

## Installation

```
dependencies:
  flutter_weather_forecast: ^1.1.2
```

## Using
```dart
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
              stationNo: '34',
            ),
            WeatherForecast(
              stationNo: '36',
            ),
            WeatherForecast(
              stationNo: '01',
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
```


## WeatherForecast

| Name | Type | Default | 
| --- | --- | --- |
| stationNo | String | *required* |
| keyFontSize | double | 13 |
| valueFontSize | double | 11 |
| statusFontSize | double | 16 |
| weatherFontSize | double | 26 |
| timeFontSize | double | 13 |
| refreshIconSize | double | 20 |
| imageScale | double | .8 |
| containerHeight | double | ScreenHeight * .15 |
| borderColor | Color | Color(0XFFACAEBA) |
| keyColor | Color | Color(0XFFACAEBA) |
| valueColor | Color | Colors.black |
| weatherColor | Color | Colors.black |
| timeColor | Color | Color(0XFFACAEBA) |
| backgroundColor | Color | Colors.white |
| statusColor | Color | Colors.black |
| verticalPadding | double | 8 |
| horizontalPadding | double | 8 |

## License

[MIT](https://choosealicense.com/licenses/mit/) Copyright (c) 2022, [Emre Coşkunçay](https://github.com/coskuncay)