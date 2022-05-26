part of 'services.dart';

class LaporServices {
  var baseUrl = baseUrlName;

  final loginState = GetStorage();

  Future<LaporModel> getAll(String semester) async {
    var url = Uri.parse("$baseUrl/lapor?semester=$semester");

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

      LaporModel laporModel = LaporModel.fromJson(data);

      print('success');

      return laporModel;
    } else {
      throw Exception('Data Gagal Di Ambil');
    }
  }
}
