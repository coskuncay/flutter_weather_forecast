library flutter_weather_forecast;

import 'dart:convert';

import 'package:flutter_weather_forecast/lang/tr_TR.dart';
import 'package:flutter_weather_forecast/models/forecast_model.dart';
import 'package:flutter_weather_forecast/models/status_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class WeatherForecast extends StatefulWidget {
  const WeatherForecast({Key? key}) : super(key: key);

  @override
  State<WeatherForecast> createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
  }

  void getForecastDaily() async {
    final queryParameters = {
      'istno': '90601',
    };
    final uri = Uri.https(
        'servis.mgm.gov.tr', '/web/tahminler/gunluk', queryParameters);
    var response =
        await http.get(uri, headers: {'origin': 'https://www.mgm.gov.tr'});
    ForecastModel dailyForecast =
        ForecastModel.fromJsonModel(json.decode(response.body)[0]);
    print('Response status: ${response.statusCode}');
    print(dailyForecast.enDusukGun1);
    print(dailyForecast.enYuksekGun1);
  }

  void getCurrentForecast() async {
    final queryParameters = {
      'merkezid': '90601',
    };
    final uri =
        Uri.https('servis.mgm.gov.tr', '/web/sondurumlar', queryParameters);
    var response =
        await http.get(uri, headers: {'origin': 'https://www.mgm.gov.tr'});
    StatusModel currentForecast =
        StatusModel.fromJsonModel(json.decode(response.body)[0]);
    print('Response status: ${response.statusCode}');
    print(currentForecast.hadiseKodu);
    print(tr_TR[currentForecast.hadiseKodu.toLowerCase()]);
    print(currentForecast.sicaklik.toStringAsFixed(1));
    print(currentForecast.ruzgarHiz.toStringAsFixed(2));
  }

  @override
  Widget build(BuildContext context) {
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
              child: Column(
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
                                color: Color.fromARGB(255, 177, 177, 177),
                              ),
                            )
                          : InkWell(
                              onTap: () {
                                setState(
                                  () {
                                    // isLoading = true;
                                    getCurrentForecast();
                                  },
                                );
                              },
                              child: const Icon(
                                Icons.refresh,
                                size: 25,
                                color: Color.fromARGB(255, 177, 177, 177),
                              ),
                            ),
                      const Text(
                        '12.05.2022 - 14:03',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color.fromARGB(255, 177, 177, 177),
                          fontFamily: 'Montserrat',
                          fontSize: 11,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/y.png',
                        package: 'flutter_weather_forecast',
                        scale: .8,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          // Figma Flutter Generator GneliWidget - TEXT
                          Text(
                            'Güneşli',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(45, 49, 49, 1),
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            '18 °C',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 40,
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
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Min:',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color.fromRGBO(172, 174, 186, 1),
                                    fontSize: 13,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Text(
                                  '3 °C',
                                  style: TextStyle(
                                    color: Color.fromRGBO(45, 49, 49, 1),
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
                              children: const [
                                Text(
                                  'Max:',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color.fromRGBO(172, 174, 186, 1),
                                    fontFamily: 'Montserrat',
                                    fontSize: 13,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Text(
                                  '21 °C',
                                  style: TextStyle(
                                    color: Color.fromRGBO(45, 49, 49, 1),
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
                            children: const [
                              Text(
                                'Rüzgar',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color.fromRGBO(172, 174, 186, 1),
                                  fontSize: 13,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                '12km/h',
                                style: TextStyle(
                                  color: Color.fromRGBO(45, 49, 49, 1),
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
                            children: const [
                              Text(
                                'Nem:',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color.fromRGBO(172, 174, 186, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 13,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                              Text(
                                '12%',
                                style: TextStyle(
                                  color: Color.fromRGBO(45, 49, 49, 1),
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
