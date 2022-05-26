part of 'services.dart';

class KelasServices {
  var baseUrl = baseUrlName;

  final loginState = GetStorage();

  Future<List<KelasModel>> getKelas() async {
    var url = Uri.parse("$baseUrl/kelas");

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': loginState.read('token').toString(),
    };

    var response = await http.get(
      url,
      headers: headers,
    );
    // print('iniiii' + loginState.read('token').toString());

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];

      List<KelasModel> kelasModel = [];
      for (var item in data) {
        kelasModel.add(KelasModel.fromJson(item));
      }
      print('success');

      return kelasModel;
    } else {
      throw Exception('Kelas Gagal Diambil');
    }
  }
}
