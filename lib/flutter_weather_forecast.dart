library flutter_weather_forecast;

import 'dart:convert';

import 'package:flutter_weather_forecast/lang/tr_TR.dart';
import 'package:flutter_weather_forecast/models/forecast_model.dart';
import 'package:flutter_weather_forecast/models/status_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'models/weather_model.dart';

// ignore: must_be_immutable
class WeatherForecast extends StatefulWidget {
  WeatherForecast({
    Key? key,
    required this.stationNo,
    this.keyFontSize = 13.0,
    this.valueFontSize = 13.0,
    this.statusFontSize = 14.0,
    this.weatherFontSize = 26.0,
    this.timeFontSize = 13.0,
    this.refreshIconSize = 20.0,
    this.imageScale = .8,
    this.borderColor = const Color(0XFFACAEBA),
    this.keyColor = const Color(0XFFACAEBA),
    this.valueColor = Colors.black,
    this.statusColor = Colors.black,
    this.weatherColor = Colors.black,
    this.refreshColor = Colors.black,
    this.timeColor = const Color(0XFFACAEBA),
    this.backgroundColor = Colors.white,
    this.verticalPadding = 8.0,
    this.colorFilter,
    this.horizontalPadding = 8.0,
    this.containerHeight,
    this.image,
    this.boxFit = BoxFit.cover,
  }) : super(key: key);

  /// City code. Default is 06
  final String stationNo;

  /// Font size of Min,Max.. keys. Default is 13
  final double keyFontSize;

  /// Font size of temp,humidity .. values. Default is 11
  final double valueFontSize;

  /// Font size of status. Default is 16
  final double statusFontSize;

  /// Font size of status.Default is 26
  final double weatherFontSize;

  /// Font size of time.Default is 13
  final double timeFontSize;

  /// Size of Refresh Icon.Default is 20
  final double refreshIconSize;

  /// Scale of Image. Default .8
  final double imageScale;

  /// Height of container. Default ScreenHeight * .15
  final double? containerHeight;

  /// [Color] of selected dot. Default is Color(0XFFACAEBA)
  final Color borderColor;

  /// [Color] of selected dot. Default is Color(0XFFACAEBA)
  final Color keyColor;

  /// [Color] of selected dot. Default is  [Colors.black]
  final Color valueColor;

  /// [Color] of selected dot. Default is [Colors.black]
  final Color weatherColor;

  /// [Color] of selected dot. Default is [Colors.black]
  final Color refreshColor;

  /// [Color] of selected dot. Default is Color(0XFFACAEBA)
  final Color timeColor;

  /// [Color] of selected dot. Default is [Colors.white]
  final Color backgroundColor;

  /// [Color] of selected dot. Default is  [Colors.black]
  final Color statusColor;

  /// Vertical Padding . Default 8
  final double verticalPadding;

  /// Horizontal Padding . Default 8
  final double horizontalPadding;

  // ignore: prefer_typing_uninitialized_variables
  var image;

  /// [BoxFit] of image. Default is  [BoxFit.fill]
  final BoxFit boxFit;

  /// [ColorFilter] of image. Default is null
  ColorFilter? colorFilter;

  @override
  State<WeatherForecast> createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  bool isLoading = false;
  bool hasError = false;
  late String errorMessage;
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
      'istno': '9' + widget.stationNo + '01',
    };
    final uri = Uri.https(
        'servis.mgm.gov.tr', '/web/tahminler/gunluk', queryParameters);
    var response =
        await http.get(uri, headers: {'origin': 'https://www.mgm.gov.tr'});
    try {
      ForecastModel dailyForecast =
          ForecastModel.fromJsonModel(json.decode(response.body)[0]);
      setState(
        () {
          weatherModel.minTemp = dailyForecast.enDusukGun1.toString();
          weatherModel.maxTemp = dailyForecast.enYuksekGun1.toString();
        },
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> getCurrentForecast() async {
    DateTime now = DateTime.now();
    setState(() {
      requestTime = now.day.toString().padLeft(2, '0') +
          "." +
          now.month.toString().padLeft(2, '0') +
          "." +
          now.year.toString() +
          "-" +
          now.hour.toString().padLeft(2, '0') +
          ":" +
          now.minute.toString().padLeft(2, '0');
    });
    final queryParameters = {
      'merkezid': '9' + widget.stationNo + '01',
    };
    final uri =
        Uri.https('servis.mgm.gov.tr', '/web/sondurumlar', queryParameters);
    var response =
        await http.get(uri, headers: {'origin': 'https://www.mgm.gov.tr'});
    try {
      StatusModel currentForecast =
          StatusModel.fromJsonModel(json.decode(response.body)[0]);
      setState(
        () {
          weatherModel.weatherCode = currentForecast.hadiseKodu;
          weatherModel.currentTemp =
              currentForecast.sicaklik.toStringAsFixed(1);
          weatherModel.windSpeed = currentForecast.ruzgarHiz.toInt().toString();
          weatherModel.hum = currentForecast.nem.toInt().toString();
          getForecastDaily();
          isLoading = false;
          hasError = false;
        },
      );
    } catch (e) {
      setState(
        () {
          hasError = true;
          isLoading = false;
          errorMessage = "Hava durumu bilgileri alınamadı! Tekrar deneyiniz.";
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: widget.verticalPadding,
        horizontal: widget.horizontalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: widget.containerHeight ??
                MediaQuery.of(context).size.height * .15,
            decoration: widget.image != null
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: widget.image,
                      colorFilter: widget.colorFilter,
                      fit: widget.boxFit,
                    ),
                  )
                : BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: widget.backgroundColor,
                    border: Border.all(
                      color: hasError ? Colors.red : widget.borderColor,
                      width: 1,
                    ),
                  ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: hasError
                  ? Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(errorMessage),
                          isLoading
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 1,
                                    color: Color.fromARGB(255, 177, 177, 177),
                                  ),
                                )
                              : InkWell(
                                  onTap: () async {
                                    setState(
                                      () {
                                        isLoading = true;
                                        getCurrentForecast();
                                      },
                                    );
                                  },
                                  child: Icon(
                                    Icons.refresh,
                                    size: widget.refreshIconSize,
                                    color: widget.refreshColor,
                                  ),
                                ),
                        ],
                      ),
                    )
                  : (weatherModel.currentTemp == null ||
                          weatherModel.minTemp == null)
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
                                        width: 5,
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
                                        child: Icon(
                                          Icons.refresh,
                                          size: widget.refreshIconSize,
                                          color: widget.refreshColor,
                                        ),
                                      ),
                                Text(
                                  requestTime,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: widget.timeColor,
                                    fontFamily: 'Montserrat',
                                    fontSize: widget.timeFontSize,
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
                                  scale: widget.imageScale,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Figma Flutter Generator GneliWidget - TEXT
                                    weatherStatusDict[weatherModel.weatherCode!
                                                .toLowerCase()] ==
                                            null
                                        ? Text(
                                            weatherStatusDict['ab']!,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: widget.statusColor,
                                              fontFamily: 'Montserrat',
                                              fontSize: widget.statusFontSize,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          )
                                        : SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .2,
                                            child: Text(
                                              weatherStatusDict[weatherModel
                                                  .weatherCode!
                                                  .toLowerCase()]!,
                                              textAlign: TextAlign.left,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: widget.statusColor,
                                                fontFamily: 'Montserrat',
                                                fontSize: widget.statusFontSize,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                    Text(
                                      weatherModel.currentTemp! + '°C',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: widget.weatherFontSize,
                                        fontWeight: FontWeight.normal,
                                        color: widget.weatherColor,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
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
                                          Text(
                                            'Min: ',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: widget.keyColor,
                                              fontSize: widget.keyFontSize,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                          Text(
                                            weatherModel.minTemp! + ' °C',
                                            style: TextStyle(
                                              color: widget.valueColor,
                                              fontFamily: 'Montserrat',
                                              fontSize: widget.valueFontSize,
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
                                          Text(
                                            'Max: ',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: widget.keyColor,
                                              fontFamily: 'Montserrat',
                                              fontSize: widget.keyFontSize,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                          Text(
                                            weatherModel.maxTemp! + ' °C',
                                            style: TextStyle(
                                              color: widget.valueColor,
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
                                        Text(
                                          'Rüzgar: ',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: widget.keyColor,
                                            fontSize: widget.keyFontSize,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        Text(
                                          weatherModel.windSpeed! + 'km/h',
                                          style: TextStyle(
                                            color: widget.valueColor,
                                            fontFamily: 'Montserrat',
                                            fontSize: widget.valueFontSize,
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
                                        Text(
                                          'Nem: ',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: widget.keyColor,
                                            fontFamily: 'Montserrat',
                                            fontSize: widget.keyFontSize,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        Text(
                                          weatherModel.hum! + '%',
                                          style: TextStyle(
                                            color: widget.valueColor,
                                            fontFamily: 'Montserrat',
                                            fontSize: widget.valueFontSize,
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
