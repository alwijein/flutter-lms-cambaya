part of 'services.dart';

class ChatServices {
  var baseUrl = baseUrlName;

  final loginState = GetStorage();

  Future<List<GrubModel>> getAll() async {
    var url = Uri.parse("$baseUrl/chat");

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': loginState.read('token').toString(),
    };

    var response = await http.get(
      url,
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      List<GrubModel> grubModel = [];

      for (var item in data) {
        grubModel.add(GrubModel.fromJson(item));
      }

      print('success');

      return grubModel;
    } else {
      throw Exception('Data Gagal Di Ambil');
    }
  }

  Future<List<ChatModel>> showChat(String id) async {
    var url = Uri.parse("$baseUrl/chat/$id");

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': loginState.read('token').toString(),
    };

    var response = await http.get(
      url,
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      List<ChatModel> chatModel = [];

      for (var item in data) {
        chatModel.add(ChatModel.fromJson(item));
      }

      print('success');

      return chatModel;
    } else {
      throw Exception('Data Gagal Di Ambil');
    }
  }

  Future inputChat({
    required String id,
    required String message,
  }) async {
    var url = Uri.parse("$baseUrl/chat/input");

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': loginState.read('token').toString(),
    };

    var body = jsonEncode({
      'id': id,
      'message': message,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];

      print('success');
    } else {
      throw Exception('Inputan Gagal');
    }
  }
}
