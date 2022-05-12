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
  int sicaklik;
  DateTime veriZamani;
  double yagis00Now;
  int yagis10Dk;
  double yagis12Saat;
  int yagis1Saat;
  double yagis24Saat;
  double yagis6Saat;
  DateTime denizVeriZamani;
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

  StatusModel copyWith({
    double? aktuelBasinc,
    int? denizSicaklik,
    double? denizeIndirgenmisBasinc,
    int? gorus,
    String? hadiseKodu,
    int? istNo,
    int? kapalilik,
    int? karYukseklik,
    int? nem,
    String? rasatMetar,
    String? rasatSinoptik,
    String? rasatTaf,
    double? ruzgarHiz,
    int? ruzgarYon,
    int? sicaklik,
    DateTime? veriZamani,
    double? yagis00Now,
    int? yagis10Dk,
    double? yagis12Saat,
    int? yagis1Saat,
    double? yagis24Saat,
    double? yagis6Saat,
    DateTime? denizVeriZamani,
  }) {
    return StatusModel(
      aktuelBasinc: aktuelBasinc ?? this.aktuelBasinc,
      denizSicaklik: denizSicaklik ?? this.denizSicaklik,
      denizeIndirgenmisBasinc:
          denizeIndirgenmisBasinc ?? this.denizeIndirgenmisBasinc,
      gorus: gorus ?? this.gorus,
      hadiseKodu: hadiseKodu ?? this.hadiseKodu,
      istNo: istNo ?? this.istNo,
      kapalilik: kapalilik ?? this.kapalilik,
      karYukseklik: karYukseklik ?? this.karYukseklik,
      nem: nem ?? this.nem,
      rasatMetar: rasatMetar ?? this.rasatMetar,
      rasatSinoptik: rasatSinoptik ?? this.rasatSinoptik,
      rasatTaf: rasatTaf ?? this.rasatTaf,
      ruzgarHiz: ruzgarHiz ?? this.ruzgarHiz,
      ruzgarYon: ruzgarYon ?? this.ruzgarYon,
      sicaklik: sicaklik ?? this.sicaklik,
      veriZamani: veriZamani ?? this.veriZamani,
      yagis00Now: yagis00Now ?? this.yagis00Now,
      yagis10Dk: yagis10Dk ?? this.yagis10Dk,
      yagis12Saat: yagis12Saat ?? this.yagis12Saat,
      yagis1Saat: yagis1Saat ?? this.yagis1Saat,
      yagis24Saat: yagis24Saat ?? this.yagis24Saat,
      yagis6Saat: yagis6Saat ?? this.yagis6Saat,
      denizVeriZamani: denizVeriZamani ?? this.denizVeriZamani,
    );
  }

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
      'veriZamani': veriZamani.millisecondsSinceEpoch,
      'yagis00Now': yagis00Now,
      'yagis10Dk': yagis10Dk,
      'yagis12Saat': yagis12Saat,
      'yagis1Saat': yagis1Saat,
      'yagis24Saat': yagis24Saat,
      'yagis6Saat': yagis6Saat,
      'denizVeriZamani': denizVeriZamani.millisecondsSinceEpoch,
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
      sicaklik: map['sicaklik']?.toInt() ?? 0,
      veriZamani: DateTime.fromMillisecondsSinceEpoch(map['veriZamani']),
      yagis00Now: map['yagis00Now']?.toDouble() ?? 0.0,
      yagis10Dk: map['yagis10Dk']?.toInt() ?? 0,
      yagis12Saat: map['yagis12Saat']?.toDouble() ?? 0.0,
      yagis1Saat: map['yagis1Saat']?.toInt() ?? 0,
      yagis24Saat: map['yagis24Saat']?.toDouble() ?? 0.0,
      yagis6Saat: map['yagis6Saat']?.toDouble() ?? 0.0,
      denizVeriZamani:
          DateTime.fromMillisecondsSinceEpoch(map['denizVeriZamani']),
    );
  }

  String toJson() => json.encode(toMap());

  factory StatusModel.fromJson(String source) =>
      StatusModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'StatusModel(aktuelBasinc: $aktuelBasinc, denizSicaklik: $denizSicaklik, denizeIndirgenmisBasinc: $denizeIndirgenmisBasinc, gorus: $gorus, hadiseKodu: $hadiseKodu, istNo: $istNo, kapalilik: $kapalilik, karYukseklik: $karYukseklik, nem: $nem, rasatMetar: $rasatMetar, rasatSinoptik: $rasatSinoptik, rasatTaf: $rasatTaf, ruzgarHiz: $ruzgarHiz, ruzgarYon: $ruzgarYon, sicaklik: $sicaklik, veriZamani: $veriZamani, yagis00Now: $yagis00Now, yagis10Dk: $yagis10Dk, yagis12Saat: $yagis12Saat, yagis1Saat: $yagis1Saat, yagis24Saat: $yagis24Saat, yagis6Saat: $yagis6Saat, denizVeriZamani: $denizVeriZamani)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StatusModel &&
        other.aktuelBasinc == aktuelBasinc &&
        other.denizSicaklik == denizSicaklik &&
        other.denizeIndirgenmisBasinc == denizeIndirgenmisBasinc &&
        other.gorus == gorus &&
        other.hadiseKodu == hadiseKodu &&
        other.istNo == istNo &&
        other.kapalilik == kapalilik &&
        other.karYukseklik == karYukseklik &&
        other.nem == nem &&
        other.rasatMetar == rasatMetar &&
        other.rasatSinoptik == rasatSinoptik &&
        other.rasatTaf == rasatTaf &&
        other.ruzgarHiz == ruzgarHiz &&
        other.ruzgarYon == ruzgarYon &&
        other.sicaklik == sicaklik &&
        other.veriZamani == veriZamani &&
        other.yagis00Now == yagis00Now &&
        other.yagis10Dk == yagis10Dk &&
        other.yagis12Saat == yagis12Saat &&
        other.yagis1Saat == yagis1Saat &&
        other.yagis24Saat == yagis24Saat &&
        other.yagis6Saat == yagis6Saat &&
        other.denizVeriZamani == denizVeriZamani;
  }

  @override
  int get hashCode {
    return aktuelBasinc.hashCode ^
        denizSicaklik.hashCode ^
        denizeIndirgenmisBasinc.hashCode ^
        gorus.hashCode ^
        hadiseKodu.hashCode ^
        istNo.hashCode ^
        kapalilik.hashCode ^
        karYukseklik.hashCode ^
        nem.hashCode ^
        rasatMetar.hashCode ^
        rasatSinoptik.hashCode ^
        rasatTaf.hashCode ^
        ruzgarHiz.hashCode ^
        ruzgarYon.hashCode ^
        sicaklik.hashCode ^
        veriZamani.hashCode ^
        yagis00Now.hashCode ^
        yagis10Dk.hashCode ^
        yagis12Saat.hashCode ^
        yagis1Saat.hashCode ^
        yagis24Saat.hashCode ^
        yagis6Saat.hashCode ^
        denizVeriZamani.hashCode;
  }
}
