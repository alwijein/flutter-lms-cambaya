class PrestasiModel {
  int? id;

  String? jenisKegiatan, keterangan;

  PrestasiModel({
    this.id,
    this.jenisKegiatan,
    this.keterangan,
  });

  PrestasiModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    jenisKegiatan = json['jenisKegiatan'];
    keterangan = json['keterangan'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'jenisKegiatan': jenisKegiatan,
      'keterangan': keterangan,
    };
  }
}
