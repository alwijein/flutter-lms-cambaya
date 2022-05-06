part of 'services.dart';

class AuthServices {
  var baseUrl = baseUrlName;

  final loginState = GetStorage();

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    var url = Uri.parse("$baseUrl/login");

    var headers = {'Content-Type': 'application/json'};

    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];

      UserModel userModel = UserModel.fromJson(data['user']);

      userModel.token = 'Bearer ' + data['access_token'];
      print('success');

      return userModel;
    } else {
      throw Exception('Login Gagal');
    }
  }

  Future<UserModel> getUser() async {
    var url = Uri.parse("$baseUrl/fetch");

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': loginState.read('token').toString(),
    };

    var response = await http.get(
      url,
      headers: headers,
    );
    print('iniiii' + loginState.read('token').toString());

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];

      UserModel userModel = UserModel.fromJson(data);

      print('success');

      return userModel;
    } else {
      throw Exception('User Gagal Diambil');
    }
  }

  Future<bool> logout() async {
    var url = Uri.parse("$baseUrl/logout");

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': loginState.read('token').toString(),
    };

    var response = await http.get(
      url,
      headers: headers,
    );
    print('iniiii' + loginState.read('token').toString());

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];

      bool isLogout = data;

      print('success');

      return isLogout;
    } else {
      throw Exception('User Gagal Diambil');
    }
  }
}
