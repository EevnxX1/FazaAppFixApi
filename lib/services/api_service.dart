// digunakan untuk mengkonversi data ke format JSON dan sebaliknya. Dalam kode ini, json.encode dan json.decode digunakan untuk mengubah objek Dart menjadi JSON dan sebaliknya.
import 'dart:convert';

// Ini adalah paket untuk melakukan request HTTP (seperti GET, POST, PUT, DELETE) ke server
import 'package:http/http.dart' as http;

// Masuk Ke Fungsi API
class ApiService {
  // baseUrl adalah URL dasar untuk API Laravel yang digunakan untuk semua endpoint. Konstanta ini bisa digunakan untuk membangun URL lengkap saat melakukan permintaan API.
  static const String baseUrl = 'http://192.168.100.68:8080/api';

  // Fungsi untuk register
  Future<Map<String, dynamic>> register(String username, String email, String password) async {
    // Menggunakan http.post untuk mengirim data ke server API dengan metode POST.
    final responseR = await http.post(
      // Uri.parse('$baseUrl/register'): URL lengkap yang mengarah ke endpoint /register di API.
      Uri.parse('$baseUrl/register'),
      // headers: Mendefinisikan bahwa konten yang dikirim adalah dalam format JSON.
      headers: {'Content-Type': 'application/json'},
      // body: Mengirimkan data dalam format JSON dengan name, email, password, dan password_confirmation sebagai parameter.
      body: json.encode({
        "username": username,
        "email": email,
        "password": password,
        "password_confirmation": password
      }),
      
    );

    // response.statusCode == 201: Jika status code yang diterima adalah 201, itu berarti registrasi berhasil.
    if (responseR.statusCode == 201) {
      // dan kemudian body respons akan didekode menjadi objek Dart menggunakan json.decode.
      return json.decode(responseR.body);
    } else {
      // Jika status code bukan 201, maka akan dilemparkan exception.
      final pesanError = jsonDecode(responseR.body);
      throw Exception(pesanError['message']);
    }
  }

  // -----------------------------------------------------------------------

  // Fungsi untuk login
  Future<Map<String, dynamic>> login(String email, String password) async {
    print('Kepastian:' + email + password);
    // Menggunakan http.post untuk mengirim data ke server API dengan metode POST.
    final response = await http.post(
      // Uri.parse('$baseUrl/login'): URL lengkap yang mengarah ke endpoint /login di API.
      Uri.parse('$baseUrl/login'),
      // headers: Mendefinisikan bahwa konten yang dikirim adalah dalam format JSON.
      headers: {'Content-Type': 'application/json'},
      // body: Mengirimkan data dalam format JSON dengan email dan password sebagai parameter.
      body: json.encode({
        'email': email,
        'password': password,
      }),
    );

    // response.statusCode == 201: Jika status code yang diterima adalah 200, itu berarti login berhasil.
    if (response.statusCode == 200) {
      // dan kemudian body respons akan didekode menjadi objek Dart menggunakan json.decode.
      return json.decode(response.body);
    } else {
      // Jika status code bukan 201, maka akan dilemparkan exception.
      final pesanError = jsonDecode(response.body);
      throw Exception(pesanError['message']);
    }
  }
}
