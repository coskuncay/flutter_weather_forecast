library flutter_weather_forecast;

import 'package:flutter/material.dart';

class WeatherForecast extends StatefulWidget {
  const WeatherForecast({Key? key}) : super(key: key);

  @override
  State<WeatherForecast> createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .24,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: const Color.fromARGB(255, 177, 177, 177),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.refresh,
                          size: 15,
                          color: Color.fromARGB(255, 177, 177, 177),
                        ),
                        Text(
                          '12.04.2022-14:03',
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
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Min:',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color.fromRGBO(172, 174, 186, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                                Text(
                                  '3 °C',
                                  style: TextStyle(
                                      color: Color.fromRGBO(45, 49, 49, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 11,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Max:',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color.fromRGBO(172, 174, 186, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                                Text(
                                  '21 °C',
                                  style: TextStyle(
                                      color: Color.fromRGBO(45, 49, 49, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Rüzgar:',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color.fromRGBO(172, 174, 186, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                                Text(
                                  '12km/h',
                                  style: TextStyle(
                                      color: Color.fromRGBO(45, 49, 49, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 11,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Nem:',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color.fromRGBO(172, 174, 186, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                                Text(
                                  '12%',
                                  style: TextStyle(
                                      color: Color.fromRGBO(45, 49, 49, 1),
                                      fontFamily: 'Montserrat',
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
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
      ),
    );
  }
}
