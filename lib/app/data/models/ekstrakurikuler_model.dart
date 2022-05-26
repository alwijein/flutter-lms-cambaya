import 'package:flutter_lms_cambaya/app/data/models/guru_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/pelajaran_model.dart';

class EkstrakurikulerModel {
  int? id;

  String? kegiatan, deskripsi;
  int? nilai;

  EkstrakurikulerModel({
    this.id,
    this.nilai,
    this.kegiatan,
    this.deskripsi,
  });

  EkstrakurikulerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nilai = json['nilai'];
    kegiatan = json['kegiatan'];
    deskripsi = json['deskripsi'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nilai': nilai,
      'kegiatan': kegiatan,
      'deskripsi': deskripsi,
    };
  }
}
