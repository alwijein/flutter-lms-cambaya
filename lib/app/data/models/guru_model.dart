import 'package:flutter_lms_cambaya/app/data/models/pelajaran_model.dart';

class GuruModel {
  int? id;

  String? noInduk, nama, jk, telp, alamat;

  PelajaranModel? pelajaran;

  GuruModel({
    this.id,
    this.noInduk,
    this.nama,
    this.jk,
    this.telp,
    this.alamat,
    this.pelajaran,
  });

  GuruModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    noInduk = json['no_induk'];
    nama = json['nama_guru'];
    jk = json['jk'];
    telp = json['telp'];
    alamat = json['alamat'];

    if (json['pelajaran'] == null) {
      pelajaran = null;
    } else {
      pelajaran = PelajaranModel.fromJson(json['pelajaran']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'no_induk': noInduk,
      'nama_guru': nama,
      'jk': jk,
      'telp': telp,
      'alamat': alamat,
      'pelajaran': pelajaran!.toJson(),
    };
  }
}
