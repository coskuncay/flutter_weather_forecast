import 'dart:convert';

class ForecastModel {
  /// minimum temperature of today + 1 day
  int enDusukGun1;

  /// minimum temperature of today + 2 days
  int enDusukGun2;

  /// minimum temperature of today + 3 days
  int enDusukGun3;

  /// minimum temperature of today + 4 days
  int enDusukGun4;

  /// minimum temperature of today + 5 days
  int enDusukGun5;

  /// minimum humidity of today + 1 day
  int enDusukNemGun1;

  /// minimum humidity of today + 2 days
  int enDusukNemGun2;

  /// minimum humidity of today + 3 days
  int enDusukNemGun3;

  /// minimum humidity of today + 4 days
  int enDusukNemGun4;

  /// minimum humidity of today + 5 days
  int enDusukNemGun5;

  /// maximum temperature of today + 1 day
  int enYuksekGun1;

  /// maximum temperature of today + 2 days
  int enYuksekGun2;

  /// maximum temperature of today + 3 days
  int enYuksekGun3;

  /// maximum temperature of today + 4 days
  int enYuksekGun4;

  /// maximum temperature of today + 5 days
  int enYuksekGun5;

  /// maximum humidity of today + 1 day
  int enYuksekNemGun1;

  /// maximum humidity of today + 2 days
  int enYuksekNemGun2;

  /// maximum humidity of today + 3 days
  int enYuksekNemGun3;

  /// maximum humidity of today + 4 days
  int enYuksekNemGun4;

  /// maximum humidity of today + 5 days
  int enYuksekNemGun5;

  /// weather code of today + 1 day
  String hadiseGun1;

  /// weather code of today + 2 days
  String hadiseGun2;

  /// weather code of today + 3 days
  String hadiseGun3;

  /// weather code of today + 4 days
  String hadiseGun4;

  /// weather code of today + 5 days
  String hadiseGun5;

  /// station code
  int istNo;

  /// wind speed of today + 1 day
  int ruzgarHizGun1;

  /// wind speed of today + 2 days
  int ruzgarHizGun2;

  /// wind speed of today + 3 days
  int ruzgarHizGun3;

  /// wind speed of today + 4 days
  int ruzgarHizGun4;

  /// wind speed of today + 5 days
  int ruzgarHizGun5;

  /// wind direction of today + 1 day
  int ruzgarYonGun1;

  /// wind direction of today + 2 days
  int ruzgarYonGun2;

  /// wind direction of today + 3 days
  int ruzgarYonGun3;

  /// wind direction of today + 4 days
  int ruzgarYonGun4;

  /// wind direction of today + 5 days
  int ruzgarYonGun5;

  /// tomorrow date
  String tarihGun1;

  /// today + 2 days
  String tarihGun2;

  /// today + 3 days
  String tarihGun3;

  /// today + 4 days
  String tarihGun4;

  /// today + 5 days
  String tarihGun5;
  ForecastModel({
    required this.enDusukGun1,
    required this.enDusukGun2,
    required this.enDusukGun3,
    required this.enDusukGun4,
    required this.enDusukGun5,
    required this.enDusukNemGun1,
    required this.enDusukNemGun2,
    required this.enDusukNemGun3,
    required this.enDusukNemGun4,
    required this.enDusukNemGun5,
    required this.enYuksekGun1,
    required this.enYuksekGun2,
    required this.enYuksekGun3,
    required this.enYuksekGun4,
    required this.enYuksekGun5,
    required this.enYuksekNemGun1,
    required this.enYuksekNemGun2,
    required this.enYuksekNemGun3,
    required this.enYuksekNemGun4,
    required this.enYuksekNemGun5,
    required this.hadiseGun1,
    required this.hadiseGun2,
    required this.hadiseGun3,
    required this.hadiseGun4,
    required this.hadiseGun5,
    required this.istNo,
    required this.ruzgarHizGun1,
    required this.ruzgarHizGun2,
    required this.ruzgarHizGun3,
    required this.ruzgarHizGun4,
    required this.ruzgarHizGun5,
    required this.ruzgarYonGun1,
    required this.ruzgarYonGun2,
    required this.ruzgarYonGun3,
    required this.ruzgarYonGun4,
    required this.ruzgarYonGun5,
    required this.tarihGun1,
    required this.tarihGun2,
    required this.tarihGun3,
    required this.tarihGun4,
    required this.tarihGun5,
  });

  static ForecastModel fromJsonModel(Map<String, dynamic> map) =>
      ForecastModel.fromMap(map);

  Map<String, dynamic> toMap() {
    return {
      'enDusukGun1': enDusukGun1,
      'enDusukGun2': enDusukGun2,
      'enDusukGun3': enDusukGun3,
      'enDusukGun4': enDusukGun4,
      'enDusukGun5': enDusukGun5,
      'enDusukNemGun1': enDusukNemGun1,
      'enDusukNemGun2': enDusukNemGun2,
      'enDusukNemGun3': enDusukNemGun3,
      'enDusukNemGun4': enDusukNemGun4,
      'enDusukNemGun5': enDusukNemGun5,
      'enYuksekGun1': enYuksekGun1,
      'enYuksekGun2': enYuksekGun2,
      'enYuksekGun3': enYuksekGun3,
      'enYuksekGun4': enYuksekGun4,
      'enYuksekGun5': enYuksekGun5,
      'enYuksekNemGun1': enYuksekNemGun1,
      'enYuksekNemGun2': enYuksekNemGun2,
      'enYuksekNemGun3': enYuksekNemGun3,
      'enYuksekNemGun4': enYuksekNemGun4,
      'enYuksekNemGun5': enYuksekNemGun5,
      'hadiseGun1': hadiseGun1,
      'hadiseGun2': hadiseGun2,
      'hadiseGun3': hadiseGun3,
      'hadiseGun4': hadiseGun4,
      'hadiseGun5': hadiseGun5,
      'istNo': istNo,
      'ruzgarHizGun1': ruzgarHizGun1,
      'ruzgarHizGun2': ruzgarHizGun2,
      'ruzgarHizGun3': ruzgarHizGun3,
      'ruzgarHizGun4': ruzgarHizGun4,
      'ruzgarHizGun5': ruzgarHizGun5,
      'ruzgarYonGun1': ruzgarYonGun1,
      'ruzgarYonGun2': ruzgarYonGun2,
      'ruzgarYonGun3': ruzgarYonGun3,
      'ruzgarYonGun4': ruzgarYonGun4,
      'ruzgarYonGun5': ruzgarYonGun5,
      'tarihGun1': tarihGun1,
      'tarihGun2': tarihGun2,
      'tarihGun3': tarihGun3,
      'tarihGun4': tarihGun4,
      'tarihGun5': tarihGun5,
    };
  }

  factory ForecastModel.fromMap(Map<String, dynamic> map) {
    return ForecastModel(
      enDusukGun1: map['enDusukGun1']?.toInt() ?? 0,
      enDusukGun2: map['enDusukGun2']?.toInt() ?? 0,
      enDusukGun3: map['enDusukGun3']?.toInt() ?? 0,
      enDusukGun4: map['enDusukGun4']?.toInt() ?? 0,
      enDusukGun5: map['enDusukGun5']?.toInt() ?? 0,
      enDusukNemGun1: map['enDusukNemGun1']?.toInt() ?? 0,
      enDusukNemGun2: map['enDusukNemGun2']?.toInt() ?? 0,
      enDusukNemGun3: map['enDusukNemGun3']?.toInt() ?? 0,
      enDusukNemGun4: map['enDusukNemGun4']?.toInt() ?? 0,
      enDusukNemGun5: map['enDusukNemGun5']?.toInt() ?? 0,
      enYuksekGun1: map['enYuksekGun1']?.toInt() ?? 0,
      enYuksekGun2: map['enYuksekGun2']?.toInt() ?? 0,
      enYuksekGun3: map['enYuksekGun3']?.toInt() ?? 0,
      enYuksekGun4: map['enYuksekGun4']?.toInt() ?? 0,
      enYuksekGun5: map['enYuksekGun5']?.toInt() ?? 0,
      enYuksekNemGun1: map['enYuksekNemGun1']?.toInt() ?? 0,
      enYuksekNemGun2: map['enYuksekNemGun2']?.toInt() ?? 0,
      enYuksekNemGun3: map['enYuksekNemGun3']?.toInt() ?? 0,
      enYuksekNemGun4: map['enYuksekNemGun4']?.toInt() ?? 0,
      enYuksekNemGun5: map['enYuksekNemGun5']?.toInt() ?? 0,
      hadiseGun1: map['hadiseGun1'] ?? '',
      hadiseGun2: map['hadiseGun2'] ?? '',
      hadiseGun3: map['hadiseGun3'] ?? '',
      hadiseGun4: map['hadiseGun4'] ?? '',
      hadiseGun5: map['hadiseGun5'] ?? '',
      istNo: map['istNo']?.toInt() ?? 0,
      ruzgarHizGun1: map['ruzgarHizGun1']?.toInt() ?? 0,
      ruzgarHizGun2: map['ruzgarHizGun2']?.toInt() ?? 0,
      ruzgarHizGun3: map['ruzgarHizGun3']?.toInt() ?? 0,
      ruzgarHizGun4: map['ruzgarHizGun4']?.toInt() ?? 0,
      ruzgarHizGun5: map['ruzgarHizGun5']?.toInt() ?? 0,
      ruzgarYonGun1: map['ruzgarYonGun1']?.toInt() ?? 0,
      ruzgarYonGun2: map['ruzgarYonGun2']?.toInt() ?? 0,
      ruzgarYonGun3: map['ruzgarYonGun3']?.toInt() ?? 0,
      ruzgarYonGun4: map['ruzgarYonGun4']?.toInt() ?? 0,
      ruzgarYonGun5: map['ruzgarYonGun5']?.toInt() ?? 0,
      tarihGun1: map['tarihGun1'] ?? '',
      tarihGun2: map['tarihGun2'] ?? '',
      tarihGun3: map['tarihGun3'] ?? '',
      tarihGun4: map['tarihGun4'] ?? '',
      tarihGun5: map['tarihGun5'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ForecastModel.fromJson(String source) =>
      ForecastModel.fromMap(json.decode(source));
}
