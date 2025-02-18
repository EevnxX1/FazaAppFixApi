// digunakan untuk mengkonversi data ke format JSON dan sebaliknya. Dalam kode ini, json.encode dan json.decode digunakan untuk mengubah objek Dart menjadi JSON dan sebaliknya.
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:faza_citra/services/preference_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Ini adalah paket untuk melakukan request HTTP (seperti GET, POST, PUT, DELETE) ke server
import 'package:http/http.dart' as http;

// Masuk Ke Fungsi API
class ApiService {
  // baseUrl adalah URL dasar untuk API Laravel yang digunakan untuk semua endpoint. Konstanta ini bisa digunakan untuk membangun URL lengkap saat melakukan permintaan API.
  static const String baseUrl = 'http://127.0.0.1:8000/api';

  // Fungsi untuk register
  Future<Map<String, dynamic>> register(String username, String bio, String email, String password, Uint8List? avatar) async {
    if (username.isEmpty || bio.isEmpty || email.isEmpty || password.isEmpty || avatar == null) {
      throw Exception('Semua field harus di isi');
    }
    String base64Image = base64Encode(avatar);
    print(base64Image);
    // Menggunakan http.post untuk mengirim data ke server API dengan metode POST.
    final responseR = await http.post(
      // Uri.parse('$baseUrl/register'): URL lengkap yang mengarah ke endpoint /register di API.
      Uri.parse('$baseUrl/users'),
      // headers: Mendefinisikan bahwa konten yang dikirim adalah dalam format JSON.
      headers: {'Content-Type': 'application/json'},
      // body: Mengirimkan data dalam format JSON dengan name, email, password, dan password_confirmation sebagai parameter.
      body: json.encode({
        "username": username,
        "bio": bio,
        "email": email,
        "avatar": base64Image,
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
  

  // Fungsi untuk buat cerita
  Future<Map<String, dynamic>> addCerita(String genre, String judul, String sinopsis, Uint8List? cover) async {
    if (genre.isEmpty || judul.isEmpty || sinopsis.isEmpty || cover == null) {
      throw Exception('Semua field harus di isi');
    }
    // Ambil id_user dari SharedPreferences
    int? idUser = await PreferencesService().getIdUser();

    if (idUser == null) {
      // Jika id_user tidak ada (user belum login atau data tidak ditemukan)
      print("User ID tidak ditemukan");
    }

    String base64Image = base64Encode(cover);
    print(base64Image);
    // Menggunakan http.post untuk mengirim data ke server API dengan metode POST.
    final response = await http.post(
      // Uri.parse('$baseUrl/register'): URL lengkap yang mengarah ke endpoint /register di API.
      Uri.parse('$baseUrl/books'),
      // headers: Mendefinisikan bahwa konten yang dikirim adalah dalam format JSON.
      headers: {'Content-Type': 'application/json'},
      // body: Mengirimkan data dalam format JSON dengan name, email, password, dan password_confirmation sebagai parameter.
      body: json.encode({
        "user_id": idUser,
        "status": genre,
        "title": judul,
        "sinopsis": sinopsis,
        "cover_book": base64Image
      }),
      
    );

    // response.statusCode == 201: Jika status code yang diterima adalah 201, itu berarti registrasi berhasil.
    if (response.statusCode == 201) {
      // dan kemudian body respons akan didekode menjadi objek Dart menggunakan json.decode.
      return json.decode(response.body);
    } else {
      // Jika status code bukan 201, maka akan dilemparkan exception.
      final pesanError = jsonDecode(response.body);
      throw Exception(pesanError['message']);
    }
  }



  // -----------------------------------------------------------------------
  
  
  
  // Fungsi untuk update cerita
  Future<Map<String, dynamic>> updateCerita(
    int id_buku,
    String genre, 
    String judul, 
    String sinopsis, 
    Uint8List? cover,
    String? coverOld,
    ) async {
    String? base64Image;
    // jika user tidak upload gambar
    if(cover == null) {
      if (genre.isEmpty || judul.isEmpty || sinopsis.isEmpty || coverOld == null) {
        throw Exception('Semua field harus di isi');
      }
      // keluarkan variabel dengan isi link gambar
      base64Image = coverOld;
      
    // jika user upload gambar
    } else {
      if (genre.isEmpty || judul.isEmpty || sinopsis.isEmpty) {
        throw Exception('Semua field harus di isi');
      }
      // keluarkan variabel dengan isi base64 gambar
      base64Image = base64Encode(cover);
    }


    // Ambil id_user dari SharedPreferences
    int? idUser = await PreferencesService().getIdUser();

    if (idUser == null) {
      // Jika id_user tidak ada (user belum login atau data tidak ditemukan)
      print("User ID tidak ditemukan");
    }

    // print('sudah ter isi = ' + base64Image);
    // print(coverOld);
    // print('sudah ter isi = ' + judul);
    // print('sudah ter isi = ' + genre);
    // print('sudah ter isi = ' + sinopsis);
    // print(idUser);
    // Menggunakan http.post untuk mengirim data ke server API dengan metode POST.
    final response = await http.put(
      // Uri.parse('$baseUrl/register'): URL lengkap yang mengarah ke endpoint /register di API.
      Uri.parse('$baseUrl/books/$id_buku'),
      // headers: Mendefinisikan bahwa konten yang dikirim adalah dalam format JSON.
      headers: {'Content-Type': 'application/json'},
      // body: Mengirimkan data dalam format JSON dengan name, email, password, dan password_confirmation sebagai parameter.
      body: json.encode({
        "user_id": idUser,
        "status": genre,
        "title": judul,
        "sinopsis": sinopsis,
        "cover_book": base64Image
      }),
      
    );

    // response.statusCode == 201: Jika status code yang diterima adalah 201, itu berarti registrasi berhasil.
    if (response.statusCode == 200) {
      // dan kemudian body respons akan didekode menjadi objek Dart menggunakan json.decode.
      return json.decode(response.body);
    } else {
      // Jika status code bukan 201, maka akan dilemparkan exception.
      final pesanError = jsonDecode(response.body);
      throw Exception(pesanError['message']);
    }
  }



  // -----------------------------------------------------------------------
  
  
  
  // Menampilkan Semua buku
  static Future<List<dynamic>> fetchBooks() async {

    try {
      var response = await http.get(Uri.parse('$baseUrl/books/created'));

      if (response.statusCode == 200) {
        return json.decode(response.body); // Mengembalikan daftar buku sebagai List
      } else {
        return []; // Jika gagal, kembalikan list kosong
      }
    } catch (e) {
      print("Error fetching books: $e");
      return [];
    }
  }
  
  
  
  
  // -----------------------------------------------------------------------
  
  // fungsi menampilkan buku sesuai id_user
  Future<List<Map<String, dynamic>>> fetchUserBooks() async {
  int? idUser = await PreferencesService().getIdUser();
  if (idUser == null) {
    print("User ID tidak ditemukan, anda belum login");
    return [];
  }

  final response = await http.get(
    Uri.parse('$baseUrl/books/user/$idUser'), // Endpoint API
  );

  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data);
  } else {
    print('Gagal mengambil data buku');
    return [];
  }
}
  
  
  // -----------------------------------------------------------------------
  
  
  // Fungsi untuk membuat bab
  Future<Map<String, dynamic>> buatBab(String noBab, String subJudul, String isiCerita, String id_buku) async {
    if (noBab.isEmpty || subJudul.isEmpty || isiCerita.isEmpty || id_buku.isEmpty) {
      throw Exception('Semua field harus di isi');
    }
    print(noBab + subJudul + isiCerita + id_buku);
    // Menggunakan http.post untuk mengirim data ke server API dengan metode POST.
    final responseR = await http.post(
      // Uri.parse('$baseUrl/register'): URL lengkap yang mengarah ke endpoint /register di API.
      Uri.parse('$baseUrl/babs'),
      // headers: Mendefinisikan bahwa konten yang dikirim adalah dalam format JSON.
      headers: {'Content-Type': 'application/json'},
      // body: Mengirimkan data dalam format JSON dengan name, email, password, dan password_confirmation sebagai parameter.
      body: json.encode({
        "book_id": id_buku,
        "bab_number": noBab,
        "sub_title": subJudul,
        "body": isiCerita
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
  
  
  
    // Fungsi untuk update bab
  Future<Map<String, dynamic>> updateBab(String noBab, String subJudul, String isiCerita, String id_buku, String id_bab) async {
    if (noBab.isEmpty || subJudul.isEmpty || isiCerita.isEmpty || id_buku.isEmpty) {
      throw Exception('Semua field harus di isi');
    }
    print(noBab + subJudul + isiCerita + id_buku + id_bab);
    // Menggunakan http.post untuk mengirim data ke server API dengan metode POST.
    final responseR = await http.put(
      // Uri.parse('$baseUrl/register'): URL lengkap yang mengarah ke endpoint /register di API.
      Uri.parse('$baseUrl/babs/$id_bab'),
      // headers: Mendefinisikan bahwa konten yang dikirim adalah dalam format JSON.
      headers: {'Content-Type': 'application/json'},
      // body: Mengirimkan data dalam format JSON dengan name, email, password, dan password_confirmation sebagai parameter.
      body: json.encode({
        "book_id": id_buku,
        "bab_number": noBab,
        "sub_title": subJudul,
        "body": isiCerita
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
  
  
  // Fungsi logout
  static Future<bool> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('access_token');

    if (token == null) return false;

    final response = await http.post(
      Uri.parse('$baseUrl/logout'),
      headers: {
        'Authorization': 'Bearer $token',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      await prefs.remove('user_token'); // Hapus token
      return true;
    }
    return false;
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
