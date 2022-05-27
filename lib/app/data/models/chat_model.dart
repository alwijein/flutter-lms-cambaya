class ChatModel {
  String? id, message, from, name, is_read;

  ChatModel({
    this.id,
    this.name,
  });

  ChatModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    message = json['message'];
    from = json['from'];
    name = json['name'];
    is_read = json['is_read'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'message': message,
      'from': from,
      'name': name,
      'is_read': is_read,
    };
  }
}
