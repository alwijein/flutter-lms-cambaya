import 'package:flutter_lms_cambaya/app/data/models/guru_model.dart';
import 'package:flutter_lms_cambaya/app/data/models/pelajaran_model.dart';

class JadwalModel {
  int? id;

  String? kelas, jam, tanggal, kodehari;

  PelajaranModel? pelajaran;

  GuruModel? guru;

  JadwalModel({
    this.id,
    this.kodehari,
    this.kelas,
    this.jam,
    this.tanggal,
    this.pelajaran,
    this.guru,
  });

  JadwalModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kodehari = json['kode_hari'];
    kelas = json['kelas'];
    jam = json['jam'];

    if (json['tanggal'] == null) {
      tanggal = null;
    } else {
      tanggal = json['tanggal'];
    }

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
      'kode_hari': kodehari,
      'kelas': kelas,
      'jam': jam,
      'tanggal': tanggal,
      'pelajaran': pelajaran!.toJson(),
      'guru': guru!.toJson(),
    };
  }
}
