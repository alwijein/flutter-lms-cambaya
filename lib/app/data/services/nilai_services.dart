part of 'services.dart';

class NilaiServices {
  var baseUrl = baseUrlName;

  final loginState = GetStorage();

  Future<List<NilaiUjianModel>> getAll(String semester) async {
    var url = Uri.parse("$baseUrl/hasil-ujian?semester=$semester");

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
      List<NilaiUjianModel> nilaUjianModel = [];

      for (var item in data) {
        nilaUjianModel.add(NilaiUjianModel.fromJson(item));
      }

      print('success');

      return nilaUjianModel;
    } else {
      throw Exception('Data Gagal Di Ambil');
    }
  }
}
