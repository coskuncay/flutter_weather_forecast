import 'dart:convert';

class ForecastModel {
  int enDusukGun1;
  int enDusukGun2;
  int enDusukGun3;
  int enDusukGun4;
  int enDusukGun5;
  int enDusukNemGun1;
  int enDusukNemGun2;
  int enDusukNemGun3;
  int enDusukNemGun4;
  int enDusukNemGun5;
  int enYuksekGun1;
  int enYuksekGun2;
  int enYuksekGun3;
  int enYuksekGun4;
  int enYuksekGun5;
  int enYuksekNemGun1;
  int enYuksekNemGun2;
  int enYuksekNemGun3;
  int enYuksekNemGun4;
  int enYuksekNemGun5;
  String hadiseGun1;
  String hadiseGun2;
  String hadiseGun3;
  String hadiseGun4;
  String hadiseGun5;
  int istNo;
  int ruzgarHizGun1;
  int ruzgarHizGun2;
  int ruzgarHizGun3;
  int ruzgarHizGun4;
  int ruzgarHizGun5;
  int ruzgarYonGun1;
  int ruzgarYonGun2;
  int ruzgarYonGun3;
  int ruzgarYonGun4;
  int ruzgarYonGun5;
  DateTime tarihGun1;
  DateTime tarihGun2;
  DateTime tarihGun3;
  DateTime tarihGun4;
  DateTime tarihGun5;
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
      'tarihGun1': tarihGun1.millisecondsSinceEpoch,
      'tarihGun2': tarihGun2.millisecondsSinceEpoch,
      'tarihGun3': tarihGun3.millisecondsSinceEpoch,
      'tarihGun4': tarihGun4.millisecondsSinceEpoch,
      'tarihGun5': tarihGun5.millisecondsSinceEpoch,
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
      tarihGun1: DateTime.fromMillisecondsSinceEpoch(map['tarihGun1']),
      tarihGun2: DateTime.fromMillisecondsSinceEpoch(map['tarihGun2']),
      tarihGun3: DateTime.fromMillisecondsSinceEpoch(map['tarihGun3']),
      tarihGun4: DateTime.fromMillisecondsSinceEpoch(map['tarihGun4']),
      tarihGun5: DateTime.fromMillisecondsSinceEpoch(map['tarihGun5']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ForecastModel.fromJson(String source) =>
      ForecastModel.fromMap(json.decode(source));
}
