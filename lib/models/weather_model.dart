import 'dart:convert';

class WeatherModel {
  String? weatherCode;
  String? minTemp;
  String? maxTemp;
  String? windSpeed;
  String? hum;
  String? currentTemp;
  WeatherModel({
    this.weatherCode,
    this.minTemp,
    this.maxTemp,
    this.windSpeed,
    this.hum,
    this.currentTemp,
  });

  Map<String, dynamic> toMap() {
    return {
      'weatherCode': weatherCode,
      'minTemp': minTemp,
      'maxTemp': maxTemp,
      'windSpeed': windSpeed,
      'hum': hum,
      'currentTemp': currentTemp,
    };
  }

  factory WeatherModel.fromMap(Map<String, dynamic> map) {
    return WeatherModel(
      weatherCode: map['weatherCode'] ?? '',
      minTemp: map['minTemp'] ?? '',
      maxTemp: map['maxTemp'] ?? '',
      windSpeed: map['windSpeed'] ?? '',
      hum: map['hum'] ?? '',
      currentTemp: map['currentTemp'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherModel.fromJson(String source) =>
      WeatherModel.fromMap(json.decode(source));
}
