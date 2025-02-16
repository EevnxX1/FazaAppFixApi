import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  // Fungsi untuk menyimpan data pengguna ke SharedPreferences
  Future<void> saveUserData(Map<String, dynamic> responseData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Ambil data yang dibutuhkan
    String accessToken = responseData['access_token'];
    Map<String, dynamic> user = responseData['user'];
    int userId = user['id'];
    String username = user['username'];
    String email = user['email'];
    String bio = user['bio'];
    String avatar = user['avatar'];

    // Simpan data ke SharedPreferences
    await prefs.setString('access_token', accessToken);
    await prefs.setInt('user_id', userId);
    await prefs.setString('username', username);
    await prefs.setString('email', email);
    await prefs.setString('bio', bio);
    await prefs.setString('avatar', avatar);

    print('Data login berhasil disimpan');
  }

  // Fungsi untuk mengambil data username dari SharedPreferences
  Future<String?> getUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? username = prefs.getString('username');
    return username;
  }

  Future<String?> getImgProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? avatar = prefs.getString('avatar');
    return avatar;
  }

  // Fungsi untuk mengambil data id_user dari SharedPreferences
  Future<int?> getIdUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('user_id');
  }
}
