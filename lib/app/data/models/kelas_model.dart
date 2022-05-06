class KelasModel {
  int? id;
  String? kelas;

  KelasModel({
    this.id,
    this.kelas,
  });

  KelasModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    kelas = json['kelas'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'kelas': kelas,
    };
  }
}
