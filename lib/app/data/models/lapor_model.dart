import 'package:flutter_lms_cambaya/app/data/models/absen_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/ekstrakurikuler_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/nilai_ujian_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/prestasi_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/sikap_model.dart';

class LaporModel {
  int? id;

  List<SikapModel> sikapModel = [];

  List<NilaiUjianModel> nilaiUjianModel = [];

  List<EkstrakurikulerModel> ekstrakurikulerModel = [];

  List<PrestasiModel> prestasiModel = [];

  AbsenModel absenModel = AbsenModel();

  LaporModel({
    this.id,
    required this.sikapModel,
    required this.nilaiUjianModel,
    required this.ekstrakurikulerModel,
    required this.prestasiModel,
    required this.absenModel,
  });

  LaporModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];

    for (var item in json['pengetahuan']) {
      nilaiUjianModel.add(NilaiUjianModel.fromJson(item));
    }

    for (var item in json['sikap']) {
      sikapModel.add(SikapModel.fromJson(item));
    }

    for (var item in json['ekstrakurikuler']) {
      ekstrakurikulerModel.add(EkstrakurikulerModel.fromJson(item));
    }

    for (var item in json['prestasi']) {
      prestasiModel.add(PrestasiModel.fromJson(item));
    }

    absenModel = AbsenModel.fromJson(json['absen']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pengatahuan': nilaiUjianModel.toList(),
      'sikap': sikapModel.toList(),
      'ekstrakurikuler': ekstrakurikulerModel.toList(),
      'prestasi': prestasiModel.toList(),
      'absen': absenModel.toJson(),
    };
  }
}
