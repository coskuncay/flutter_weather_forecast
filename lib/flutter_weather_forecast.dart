library flutter_weather_forecast;

import 'dart:convert';

import 'package:flutter_weather_forecast/lang/tr_TR.dart';
import 'package:flutter_weather_forecast/models/forecast_model.dart';
import 'package:flutter_weather_forecast/models/status_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'models/weather_model.dart';

class WeatherForecast extends StatefulWidget {
  const WeatherForecast({
    Key? key,
    this.stationNo = "90601",
  }) : super(key: key);

  /// Height of container.Default is 200
  final String stationNo;
  @override
  State<WeatherForecast> createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  bool isLoading = false;
  late WeatherModel weatherModel;
  late String requestTime;
  @override
  void initState() {
    weatherModel = WeatherModel();
    super.initState();
    getCurrentForecast();
  }

  Future<void> getForecastDaily() async {
    final queryParameters = {
      'istno': widget.stationNo,
    };
    final uri = Uri.https(
        'servis.mgm.gov.tr', '/web/tahminler/gunluk', queryParameters);
    var response =
        await http.get(uri, headers: {'origin': 'https://www.mgm.gov.tr'});
    ForecastModel dailyForecast =
        ForecastModel.fromJsonModel(json.decode(response.body)[0]);
    setState(
      () {
        weatherModel.minTemp = dailyForecast.enDusukGun1.toString();
        weatherModel.maxTemp = dailyForecast.enYuksekGun1.toString();
      },
    );
  }

  Future<void> getCurrentForecast() async {
    DateTime now = DateTime.now();
    setState(() {
      requestTime = now.day.toString() +
          "." +
          now.month.toString() +
          "." +
          now.year.toString() +
          "-" +
          now.hour.toString() +
          ":" +
          now.minute.toString();
    });
    final queryParameters = {
      'merkezid': widget.stationNo,
    };
    final uri =
        Uri.https('servis.mgm.gov.tr', '/web/sondurumlar', queryParameters);
    var response =
        await http.get(uri, headers: {'origin': 'https://www.mgm.gov.tr'});
    StatusModel currentForecast =
        StatusModel.fromJsonModel(json.decode(response.body)[0]);
    getForecastDaily();
    setState(
      () {
        weatherModel.weatherCode = currentForecast.hadiseKodu;
        weatherModel.currentTemp = currentForecast.sicaklik.toStringAsFixed(1);
        weatherModel.windSpeed = currentForecast.ruzgarHiz.toInt().toString();
        weatherModel.hum = currentForecast.nem.toInt().toString();
        isLoading = false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildWeatherWidget(context);
  }

  Widget buildWeatherWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromRGBO(255, 255, 255, 1),
              border: Border.all(
                color: const Color.fromARGB(255, 216, 215, 216),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: weatherModel.currentTemp == null
                  ? const Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 1,
                      ),
                    )
                  : weatherModel.minTemp == null
                      ? const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                          ),
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                isLoading
                                    ? const SizedBox(
                                        width: 10,
                                        height: 10,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 1,
                                          color: Color.fromARGB(
                                              255, 177, 177, 177),
                                        ),
                                      )
                                    : InkWell(
                                        onTap: () {
                                          setState(
                                            () {
                                              isLoading = true;
                                              getCurrentForecast();
                                            },
                                          );
                                        },
                                        child: const Icon(
                                          Icons.refresh,
                                          size: 15,
                                          color: Color.fromARGB(
                                              255, 177, 177, 177),
                                        ),
                                      ),
                                Text(
                                  requestTime,
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                    color: Color.fromARGB(255, 177, 177, 177),
                                    fontFamily: 'Montserrat',
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/' +
                                      weatherModel.weatherCode!.toLowerCase() +
                                      '.png',
                                  package: 'flutter_weather_forecast',
                                  scale: .8,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Figma Flutter Generator GneliWidget - TEXT
                                    Text(
                                      weatherStatusDict[weatherModel
                                          .weatherCode!
                                          .toLowerCase()]!,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        color: Color.fromRGBO(45, 49, 49, 1),
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Text(
                                      weatherModel.currentTemp! + '°C',
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.normal,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'Min:',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  172, 174, 186, 1),
                                              fontSize: 13,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                          Text(
                                            weatherModel.minTemp! + ' °C',
                                            style: const TextStyle(
                                              color:
                                                  Color.fromRGBO(45, 49, 49, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 12,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            'Max:',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  172, 174, 186, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 13,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                          Text(
                                            weatherModel.maxTemp! + ' °C',
                                            style: const TextStyle(
                                              color:
                                                  Color.fromRGBO(45, 49, 49, 1),
                                              fontFamily: 'Montserrat',
                                              fontSize: 12,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'Rüzgar:',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                172, 174, 186, 1),
                                            fontSize: 13,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        Text(
                                          weatherModel.windSpeed! + 'km/h',
                                          style: const TextStyle(
                                            color:
                                                Color.fromRGBO(45, 49, 49, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Nem:',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                172, 174, 186, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 13,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        Text(
                                          weatherModel.hum! + '%',
                                          style: const TextStyle(
                                            color:
                                                Color.fromRGBO(45, 49, 49, 1),
                                            fontFamily: 'Montserrat',
                                            fontSize: 12,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
            ),
          ),
        ],
      ),
    );
  }
}
