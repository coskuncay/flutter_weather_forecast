import 'dart:convert';

class StationModel {
  dynamic alternatifHadiseIstNo;

  /// longitude of station
  double boylam;

  /// latitude of station
  double enlem;

  /// station code
  int gunlukTahminIstNo;

  /// city
  String il;

  /// city code
  int ilPlaka;

  /// county
  String ilce;

  ///center county code
  int merkezId;
  int oncelik;
  int saatlikTahminIstNo;
  int sondurumIstNo;

  ///altitude
  int yukseklik;

  /// description
  String aciklama;
  int modelId;
  int gps;
  StationModel({
    required this.alternatifHadiseIstNo,
    required this.boylam,
    required this.enlem,
    required this.gunlukTahminIstNo,
    required this.il,
    required this.ilPlaka,
    required this.ilce,
    required this.merkezId,
    required this.oncelik,
    required this.saatlikTahminIstNo,
    required this.sondurumIstNo,
    required this.yukseklik,
    required this.aciklama,
    required this.modelId,
    required this.gps,
  });

  Map<String, dynamic> toMap() {
    return {
      'alternatifHadiseIstNo': alternatifHadiseIstNo,
      'boylam': boylam,
      'enlem': enlem,
      'gunlukTahminIstNo': gunlukTahminIstNo,
      'il': il,
      'ilPlaka': ilPlaka,
      'ilce': ilce,
      'merkezId': merkezId,
      'oncelik': oncelik,
      'saatlikTahminIstNo': saatlikTahminIstNo,
      'sondurumIstNo': sondurumIstNo,
      'yukseklik': yukseklik,
      'aciklama': aciklama,
      'modelId': modelId,
      'gps': gps,
    };
  }

  factory StationModel.fromMap(Map<String, dynamic> map) {
    return StationModel(
      alternatifHadiseIstNo: map['alternatifHadiseIstNo'] ?? null,
      boylam: map['boylam']?.toDouble() ?? 0.0,
      enlem: map['enlem']?.toDouble() ?? 0.0,
      gunlukTahminIstNo: map['gunlukTahminIstNo']?.toInt() ?? 0,
      il: map['il'] ?? '',
      ilPlaka: map['ilPlaka']?.toInt() ?? 0,
      ilce: map['ilce'] ?? '',
      merkezId: map['merkezId']?.toInt() ?? 0,
      oncelik: map['oncelik']?.toInt() ?? 0,
      saatlikTahminIstNo: map['saatlikTahminIstNo']?.toInt() ?? 0,
      sondurumIstNo: map['sondurumIstNo']?.toInt() ?? 0,
      yukseklik: map['yukseklik']?.toInt() ?? 0,
      aciklama: map['aciklama'] ?? '',
      modelId: map['modelId']?.toInt() ?? 0,
      gps: map['gps']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory StationModel.fromJson(String source) =>
      StationModel.fromMap(json.decode(source));
}
