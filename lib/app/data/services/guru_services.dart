part of 'services.dart';

class GuruServices {
  var baseUrl = baseUrlName;

  final loginState = GetStorage();

  Future<List<GuruModel>> getAll() async {
    var url = Uri.parse("$baseUrl/data/guru");

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
      var data = jsonDecode(response.body)['data']['data'];
      List<GuruModel> guruModel = [];

      for (var item in data) {
        guruModel.add(GuruModel.fromJson(item));
      }

      print('success');

      return guruModel;
    } else {
      throw Exception('Data Gagal Di Ambil');
    }
  }
}
