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

  ForecastModel copyWith({
    int? enDusukGun1,
    int? enDusukGun2,
    int? enDusukGun3,
    int? enDusukGun4,
    int? enDusukGun5,
    int? enDusukNemGun1,
    int? enDusukNemGun2,
    int? enDusukNemGun3,
    int? enDusukNemGun4,
    int? enDusukNemGun5,
    int? enYuksekGun1,
    int? enYuksekGun2,
    int? enYuksekGun3,
    int? enYuksekGun4,
    int? enYuksekGun5,
    int? enYuksekNemGun1,
    int? enYuksekNemGun2,
    int? enYuksekNemGun3,
    int? enYuksekNemGun4,
    int? enYuksekNemGun5,
    String? hadiseGun1,
    String? hadiseGun2,
    String? hadiseGun3,
    String? hadiseGun4,
    String? hadiseGun5,
    int? istNo,
    int? ruzgarHizGun1,
    int? ruzgarHizGun2,
    int? ruzgarHizGun3,
    int? ruzgarHizGun4,
    int? ruzgarHizGun5,
    int? ruzgarYonGun1,
    int? ruzgarYonGun2,
    int? ruzgarYonGun3,
    int? ruzgarYonGun4,
    int? ruzgarYonGun5,
    DateTime? tarihGun1,
    DateTime? tarihGun2,
    DateTime? tarihGun3,
    DateTime? tarihGun4,
    DateTime? tarihGun5,
  }) {
    return ForecastModel(
      enDusukGun1: enDusukGun1 ?? this.enDusukGun1,
      enDusukGun2: enDusukGun2 ?? this.enDusukGun2,
      enDusukGun3: enDusukGun3 ?? this.enDusukGun3,
      enDusukGun4: enDusukGun4 ?? this.enDusukGun4,
      enDusukGun5: enDusukGun5 ?? this.enDusukGun5,
      enDusukNemGun1: enDusukNemGun1 ?? this.enDusukNemGun1,
      enDusukNemGun2: enDusukNemGun2 ?? this.enDusukNemGun2,
      enDusukNemGun3: enDusukNemGun3 ?? this.enDusukNemGun3,
      enDusukNemGun4: enDusukNemGun4 ?? this.enDusukNemGun4,
      enDusukNemGun5: enDusukNemGun5 ?? this.enDusukNemGun5,
      enYuksekGun1: enYuksekGun1 ?? this.enYuksekGun1,
      enYuksekGun2: enYuksekGun2 ?? this.enYuksekGun2,
      enYuksekGun3: enYuksekGun3 ?? this.enYuksekGun3,
      enYuksekGun4: enYuksekGun4 ?? this.enYuksekGun4,
      enYuksekGun5: enYuksekGun5 ?? this.enYuksekGun5,
      enYuksekNemGun1: enYuksekNemGun1 ?? this.enYuksekNemGun1,
      enYuksekNemGun2: enYuksekNemGun2 ?? this.enYuksekNemGun2,
      enYuksekNemGun3: enYuksekNemGun3 ?? this.enYuksekNemGun3,
      enYuksekNemGun4: enYuksekNemGun4 ?? this.enYuksekNemGun4,
      enYuksekNemGun5: enYuksekNemGun5 ?? this.enYuksekNemGun5,
      hadiseGun1: hadiseGun1 ?? this.hadiseGun1,
      hadiseGun2: hadiseGun2 ?? this.hadiseGun2,
      hadiseGun3: hadiseGun3 ?? this.hadiseGun3,
      hadiseGun4: hadiseGun4 ?? this.hadiseGun4,
      hadiseGun5: hadiseGun5 ?? this.hadiseGun5,
      istNo: istNo ?? this.istNo,
      ruzgarHizGun1: ruzgarHizGun1 ?? this.ruzgarHizGun1,
      ruzgarHizGun2: ruzgarHizGun2 ?? this.ruzgarHizGun2,
      ruzgarHizGun3: ruzgarHizGun3 ?? this.ruzgarHizGun3,
      ruzgarHizGun4: ruzgarHizGun4 ?? this.ruzgarHizGun4,
      ruzgarHizGun5: ruzgarHizGun5 ?? this.ruzgarHizGun5,
      ruzgarYonGun1: ruzgarYonGun1 ?? this.ruzgarYonGun1,
      ruzgarYonGun2: ruzgarYonGun2 ?? this.ruzgarYonGun2,
      ruzgarYonGun3: ruzgarYonGun3 ?? this.ruzgarYonGun3,
      ruzgarYonGun4: ruzgarYonGun4 ?? this.ruzgarYonGun4,
      ruzgarYonGun5: ruzgarYonGun5 ?? this.ruzgarYonGun5,
      tarihGun1: tarihGun1 ?? this.tarihGun1,
      tarihGun2: tarihGun2 ?? this.tarihGun2,
      tarihGun3: tarihGun3 ?? this.tarihGun3,
      tarihGun4: tarihGun4 ?? this.tarihGun4,
      tarihGun5: tarihGun5 ?? this.tarihGun5,
    );
  }

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

  @override
  String toString() {
    return 'ForecastModel(enDusukGun1: $enDusukGun1, enDusukGun2: $enDusukGun2, enDusukGun3: $enDusukGun3, enDusukGun4: $enDusukGun4, enDusukGun5: $enDusukGun5, enDusukNemGun1: $enDusukNemGun1, enDusukNemGun2: $enDusukNemGun2, enDusukNemGun3: $enDusukNemGun3, enDusukNemGun4: $enDusukNemGun4, enDusukNemGun5: $enDusukNemGun5, enYuksekGun1: $enYuksekGun1, enYuksekGun2: $enYuksekGun2, enYuksekGun3: $enYuksekGun3, enYuksekGun4: $enYuksekGun4, enYuksekGun5: $enYuksekGun5, enYuksekNemGun1: $enYuksekNemGun1, enYuksekNemGun2: $enYuksekNemGun2, enYuksekNemGun3: $enYuksekNemGun3, enYuksekNemGun4: $enYuksekNemGun4, enYuksekNemGun5: $enYuksekNemGun5, hadiseGun1: $hadiseGun1, hadiseGun2: $hadiseGun2, hadiseGun3: $hadiseGun3, hadiseGun4: $hadiseGun4, hadiseGun5: $hadiseGun5, istNo: $istNo, ruzgarHizGun1: $ruzgarHizGun1, ruzgarHizGun2: $ruzgarHizGun2, ruzgarHizGun3: $ruzgarHizGun3, ruzgarHizGun4: $ruzgarHizGun4, ruzgarHizGun5: $ruzgarHizGun5, ruzgarYonGun1: $ruzgarYonGun1, ruzgarYonGun2: $ruzgarYonGun2, ruzgarYonGun3: $ruzgarYonGun3, ruzgarYonGun4: $ruzgarYonGun4, ruzgarYonGun5: $ruzgarYonGun5, tarihGun1: $tarihGun1, tarihGun2: $tarihGun2, tarihGun3: $tarihGun3, tarihGun4: $tarihGun4, tarihGun5: $tarihGun5)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ForecastModel &&
        other.enDusukGun1 == enDusukGun1 &&
        other.enDusukGun2 == enDusukGun2 &&
        other.enDusukGun3 == enDusukGun3 &&
        other.enDusukGun4 == enDusukGun4 &&
        other.enDusukGun5 == enDusukGun5 &&
        other.enDusukNemGun1 == enDusukNemGun1 &&
        other.enDusukNemGun2 == enDusukNemGun2 &&
        other.enDusukNemGun3 == enDusukNemGun3 &&
        other.enDusukNemGun4 == enDusukNemGun4 &&
        other.enDusukNemGun5 == enDusukNemGun5 &&
        other.enYuksekGun1 == enYuksekGun1 &&
        other.enYuksekGun2 == enYuksekGun2 &&
        other.enYuksekGun3 == enYuksekGun3 &&
        other.enYuksekGun4 == enYuksekGun4 &&
        other.enYuksekGun5 == enYuksekGun5 &&
        other.enYuksekNemGun1 == enYuksekNemGun1 &&
        other.enYuksekNemGun2 == enYuksekNemGun2 &&
        other.enYuksekNemGun3 == enYuksekNemGun3 &&
        other.enYuksekNemGun4 == enYuksekNemGun4 &&
        other.enYuksekNemGun5 == enYuksekNemGun5 &&
        other.hadiseGun1 == hadiseGun1 &&
        other.hadiseGun2 == hadiseGun2 &&
        other.hadiseGun3 == hadiseGun3 &&
        other.hadiseGun4 == hadiseGun4 &&
        other.hadiseGun5 == hadiseGun5 &&
        other.istNo == istNo &&
        other.ruzgarHizGun1 == ruzgarHizGun1 &&
        other.ruzgarHizGun2 == ruzgarHizGun2 &&
        other.ruzgarHizGun3 == ruzgarHizGun3 &&
        other.ruzgarHizGun4 == ruzgarHizGun4 &&
        other.ruzgarHizGun5 == ruzgarHizGun5 &&
        other.ruzgarYonGun1 == ruzgarYonGun1 &&
        other.ruzgarYonGun2 == ruzgarYonGun2 &&
        other.ruzgarYonGun3 == ruzgarYonGun3 &&
        other.ruzgarYonGun4 == ruzgarYonGun4 &&
        other.ruzgarYonGun5 == ruzgarYonGun5 &&
        other.tarihGun1 == tarihGun1 &&
        other.tarihGun2 == tarihGun2 &&
        other.tarihGun3 == tarihGun3 &&
        other.tarihGun4 == tarihGun4 &&
        other.tarihGun5 == tarihGun5;
  }

  @override
  int get hashCode {
    return enDusukGun1.hashCode ^
        enDusukGun2.hashCode ^
        enDusukGun3.hashCode ^
        enDusukGun4.hashCode ^
        enDusukGun5.hashCode ^
        enDusukNemGun1.hashCode ^
        enDusukNemGun2.hashCode ^
        enDusukNemGun3.hashCode ^
        enDusukNemGun4.hashCode ^
        enDusukNemGun5.hashCode ^
        enYuksekGun1.hashCode ^
        enYuksekGun2.hashCode ^
        enYuksekGun3.hashCode ^
        enYuksekGun4.hashCode ^
        enYuksekGun5.hashCode ^
        enYuksekNemGun1.hashCode ^
        enYuksekNemGun2.hashCode ^
        enYuksekNemGun3.hashCode ^
        enYuksekNemGun4.hashCode ^
        enYuksekNemGun5.hashCode ^
        hadiseGun1.hashCode ^
        hadiseGun2.hashCode ^
        hadiseGun3.hashCode ^
        hadiseGun4.hashCode ^
        hadiseGun5.hashCode ^
        istNo.hashCode ^
        ruzgarHizGun1.hashCode ^
        ruzgarHizGun2.hashCode ^
        ruzgarHizGun3.hashCode ^
        ruzgarHizGun4.hashCode ^
        ruzgarHizGun5.hashCode ^
        ruzgarYonGun1.hashCode ^
        ruzgarYonGun2.hashCode ^
        ruzgarYonGun3.hashCode ^
        ruzgarYonGun4.hashCode ^
        ruzgarYonGun5.hashCode ^
        tarihGun1.hashCode ^
        tarihGun2.hashCode ^
        tarihGun3.hashCode ^
        tarihGun4.hashCode ^
        tarihGun5.hashCode;
  }
}
