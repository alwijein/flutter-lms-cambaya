part of 'services.dart';

class JadwalServices {
  var baseUrl = baseUrlName;

  final loginState = GetStorage();

  Future<List<JadwalModel>> getJadwalToday({
    required int hari,
  }) async {
    var url = Uri.parse(
        "$baseUrl/jadwal/siswa?kelas=${loginState.read('kelas')}&kode_hari=$hari");

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
      List<JadwalModel> jadwalModel = [];

      for (var item in data) {
        jadwalModel.add(JadwalModel.fromJson(item));
      }

      print('success');

      return jadwalModel;
    } else {
      throw Exception('User Gagal Diambil');
    }
  }

  Future<List<JadwalModel>> getAll(String status) async {
    var url =
        Uri.parse("$baseUrl/jadwal/$status?kelas=${loginState.read('kelas')}");

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
      List<JadwalModel> jadwalModel = [];

      for (var item in data) {
        jadwalModel.add(JadwalModel.fromJson(item));
      }

      print('success');

      return jadwalModel;
    } else {
      throw Exception('User Gagal Diambil');
    }
  }
}
