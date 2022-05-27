class GrubModel {
  String? id;
  String? name;

  GrubModel({
    this.id,
    this.name,
  });

  GrubModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
