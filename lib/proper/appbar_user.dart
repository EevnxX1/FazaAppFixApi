import 'package:faza_citra/profile.dart';
import 'package:faza_citra/services/preference_service.dart';
import 'package:flutter/material.dart';

class AppbarUser extends StatelessWidget implements PreferredSizeWidget{
  const AppbarUser({super.key});

  @override
  Widget build(BuildContext context) {
    final colorApp = Color.fromRGBO(214, 183, 255, 1.0);
    return AppBar(
        backgroundColor: colorApp,
        leadingWidth: 150,
        leading: Image.asset('assets/logo2.png'),
        actions: [
          InkWell(
            onTap: () {
              
            },
            child: Image.asset('assets/Sliders.png'),
          ),
          FutureBuilder(
            // Memanggil fungsi async untuk mengambil username
            future: PreferencesService().getImgProfile(),
            builder: (context, snapshot) {
              // Jika statusnya waiting (masih memuat)
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Container(child: CircularProgressIndicator());
              }

              // Jika terjadi error
              if (snapshot.hasError) {
                return Container(child: Text('Error: ${snapshot.error}'));
              }

              // Jika data berhasil didapatkan
              if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                return Container(
            margin: EdgeInsets.only(right: 20, left: 20),
            child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return profilePage();
                  }
                ),
                );
            },
            child: Image.network(
              '${snapshot.data}',
              height: 35,
            ),
          ),
          );
              }
              return Container(child: Text('No user data available'));
            },
          ),
        ],
      );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}