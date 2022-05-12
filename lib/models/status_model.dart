import 'dart:convert';

class StatusModel {
  double aktuelBasinc;
  int denizSicaklik;
  double denizeIndirgenmisBasinc;
  int gorus;
  String hadiseKodu;
  int istNo;
  int kapalilik;
  int karYukseklik;
  int nem;
  String rasatMetar;
  String rasatSinoptik;
  String rasatTaf;
  double ruzgarHiz;
  int ruzgarYon;
  double sicaklik;
  String veriZamani;
  double yagis00Now;
  int yagis10Dk;
  double yagis12Saat;
  int yagis1Saat;
  double yagis24Saat;
  double yagis6Saat;
  String denizVeriZamani;
  StatusModel({
    required this.aktuelBasinc,
    required this.denizSicaklik,
    required this.denizeIndirgenmisBasinc,
    required this.gorus,
    required this.hadiseKodu,
    required this.istNo,
    required this.kapalilik,
    required this.karYukseklik,
    required this.nem,
    required this.rasatMetar,
    required this.rasatSinoptik,
    required this.rasatTaf,
    required this.ruzgarHiz,
    required this.ruzgarYon,
    required this.sicaklik,
    required this.veriZamani,
    required this.yagis00Now,
    required this.yagis10Dk,
    required this.yagis12Saat,
    required this.yagis1Saat,
    required this.yagis24Saat,
    required this.yagis6Saat,
    required this.denizVeriZamani,
  });

  static StatusModel fromJsonModel(Map<String, dynamic> map) =>
      StatusModel.fromMap(map);

  Map<String, dynamic> toMap() {
    return {
      'aktuelBasinc': aktuelBasinc,
      'denizSicaklik': denizSicaklik,
      'denizeIndirgenmisBasinc': denizeIndirgenmisBasinc,
      'gorus': gorus,
      'hadiseKodu': hadiseKodu,
      'istNo': istNo,
      'kapalilik': kapalilik,
      'karYukseklik': karYukseklik,
      'nem': nem,
      'rasatMetar': rasatMetar,
      'rasatSinoptik': rasatSinoptik,
      'rasatTaf': rasatTaf,
      'ruzgarHiz': ruzgarHiz,
      'ruzgarYon': ruzgarYon,
      'sicaklik': sicaklik,
      'veriZamani': veriZamani,
      'yagis00Now': yagis00Now,
      'yagis10Dk': yagis10Dk,
      'yagis12Saat': yagis12Saat,
      'yagis1Saat': yagis1Saat,
      'yagis24Saat': yagis24Saat,
      'yagis6Saat': yagis6Saat,
      'denizVeriZamani': denizVeriZamani,
    };
  }

  factory StatusModel.fromMap(Map<String, dynamic> map) {
    return StatusModel(
      aktuelBasinc: map['aktuelBasinc']?.toDouble() ?? 0.0,
      denizSicaklik: map['denizSicaklik']?.toInt() ?? 0,
      denizeIndirgenmisBasinc:
          map['denizeIndirgenmisBasinc']?.toDouble() ?? 0.0,
      gorus: map['gorus']?.toInt() ?? 0,
      hadiseKodu: map['hadiseKodu'] ?? '',
      istNo: map['istNo']?.toInt() ?? 0,
      kapalilik: map['kapalilik']?.toInt() ?? 0,
      karYukseklik: map['karYukseklik']?.toInt() ?? 0,
      nem: map['nem']?.toInt() ?? 0,
      rasatMetar: map['rasatMetar'] ?? '',
      rasatSinoptik: map['rasatSinoptik'] ?? '',
      rasatTaf: map['rasatTaf'] ?? '',
      ruzgarHiz: map['ruzgarHiz']?.toDouble() ?? 0.0,
      ruzgarYon: map['ruzgarYon']?.toInt() ?? 0,
      sicaklik: map['sicaklik']?.toDouble() ?? 0.0,
      veriZamani: map['veriZamani'] ?? '',
      yagis00Now: map['yagis00Now']?.toDouble() ?? 0.0,
      yagis10Dk: map['yagis10Dk']?.toInt() ?? 0,
      yagis12Saat: map['yagis12Saat']?.toDouble() ?? 0.0,
      yagis1Saat: map['yagis1Saat']?.toInt() ?? 0,
      yagis24Saat: map['yagis24Saat']?.toDouble() ?? 0.0,
      yagis6Saat: map['yagis6Saat']?.toDouble() ?? 0.0,
      denizVeriZamani: map['denizVeriZamani'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory StatusModel.fromJson(String source) =>
      StatusModel.fromMap(json.decode(source));
}
