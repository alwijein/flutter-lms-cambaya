class AbsenModel {
  int? id;

  int? sakit, izin, bertugasKeluar, terlambat, tanpaKeterangan;

  AbsenModel({
    this.id,
    this.sakit,
    this.izin,
    this.bertugasKeluar,
    this.terlambat,
    this.tanpaKeterangan,
  });

  AbsenModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sakit = json['sakit'];
    izin = json['izin'];
    bertugasKeluar = json['bertugasKeluar'];
    terlambat = json['terlambat'];
    tanpaKeterangan = json['tanpaKeterangan'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sakit': sakit,
      'izin': izin,
      'bertugasKeluar': bertugasKeluar,
      'terlambat': terlambat,
      'tanpaKeterangan': tanpaKeterangan,
    };
  }
}
