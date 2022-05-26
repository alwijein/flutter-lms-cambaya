class SikapModel {
  int? id;

  String? jenisSikap, desk, predikat;

  SikapModel({
    this.id,
    this.jenisSikap,
    this.desk,
    this.predikat,
  });

  SikapModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    jenisSikap = json['jenis_sikap'];
    desk = json['desk'];
    predikat = json['predikat'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'jenis_sikap': jenisSikap,
      'desk': desk,
      'predikat': predikat,
    };
  }
}
