class PelajaranModel {
  int? id;

  String? mataPelajaran;

  PelajaranModel({
    this.id,
    this.mataPelajaran,
  });

  PelajaranModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mataPelajaran = json['mata_pelajaran'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'mata_pelajaran': mataPelajaran,
    };
  }
}
