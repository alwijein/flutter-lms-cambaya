import 'package:flutter_lms_cambaya/app/data/models/guru_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/pelajaran_model.dart';

class NilaiUjianModel {
  int? id;

  String? predikat, deskPengetahuan, deskKeterampilan;
  int? nilai;
  PelajaranModel? pelajaran;

  GuruModel? guru;

  NilaiUjianModel({
    this.id,
    this.nilai,
    this.predikat,
    this.deskPengetahuan,
    this.deskKeterampilan,
    this.pelajaran,
    this.guru,
  });

  NilaiUjianModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nilai = json['nilai'];
    predikat = json['predikat'];
    deskPengetahuan = json['desk_pengetahuan'];
    deskKeterampilan = json['desk_keterampilan'];

    if (json['pelajaran'] == null) {
      pelajaran = null;
    } else {
      pelajaran = PelajaranModel.fromJson(json['pelajaran']);
    }

    if (json['guru'] == null) {
      guru = null;
    } else {
      guru = GuruModel.fromJson(json['guru']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nilai': nilai,
      'predikat': predikat,
      'desk_pengetahuan': deskPengetahuan,
      'desk_keterampilan': deskKeterampilan,
      'pelajaran': pelajaran!.toJson(),
      'guru': guru!.toJson(),
    };
  }
}
