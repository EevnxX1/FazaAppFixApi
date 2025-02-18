import 'package:cached_network_image/cached_network_image.dart';
import 'package:faza_citra/proper/navbar_user.dart';
import 'package:faza_citra/services/api_service.dart';
import 'package:faza_citra/services/preference_service.dart';
import 'package:faza_citra/welcome_page.dart';
import 'package:flutter/material.dart';
import './home.dart';
import './search2.dart';
import './write1.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {


  void confirmLogout(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text("Konfirmasi Logout"),
        content: Text("Apakah Anda yakin ingin logout?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext); // Tutup dialog tanpa logout
            },
            child: Text("Batal"),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(dialogContext); // Tutup dialog
              bool success = await ApiService.logout();

              if (success) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => welcomePage()),
                  (Route<dynamic> route) => false,
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Berhasil logout')),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Gagal logout')),
                );
              }
            },
            child: Text("Ya, Logout"),
          ),
        ],
      );
    },
  );
}


  @override
  Widget build(BuildContext context) {
    final colorApp = Color.fromRGBO(214, 183, 255, 1.0);
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorApp,
        leading: Container(
          margin: EdgeInsets.only(left: 15),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded
            ),
          ),
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: InkWell(
            onTap: () {
              confirmLogout(context);
            },
            child: Icon(
              Icons.logout,
              size: 30,
            )
          ),
          )
        ],
       ),
       body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                margin: EdgeInsets.only(top: 20),
                child: CachedNetworkImage(
                  imageUrl: '${snapshot.data}',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                )
                );
              }
              return Container(child: Text('No user data available'));
            },
          ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      child: Column(
                        children: [
                          FutureBuilder(
                            // Memanggil fungsi async untuk mengambil username
                            future: PreferencesService().getUsername(),
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
                                child: Text(
                                '${snapshot.data}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18
                                ),
                                ),
                              );
                            }
                            return Container(child: Text('No user data available'));
                            },
                          ),
                          
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    '1051',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Followers'
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    '3 Draft',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Your Story',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 160,
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      decoration: BoxDecoration(
                        color: colorApp,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: InkWell(
                        onTap: () {
                          
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.attach_money_rounded,
                              size: 20,
                            ),
                            Container(
                              child: Text(
                                '250 Coin',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900
                                ),
                              ),
                            ),
                            Text(
                              '+',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 2,
                color: Colors.black.withOpacity(0.09),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    width: screenWidht,
                    color: Colors.black.withOpacity(0.09),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Text(
                      'Ketuk disini untuk menambahkan daily harianmu...',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Text(
                      'Cerita olehmu',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18
                      ),
                    ),
                    ),
                    InkWell(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) {
                  //       return write2Page();
                  //     }
                  //   ),
                  //   );
                },
                child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/tsbB.png'
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            width: 230,
                            child: Text(
                              "The Sky Blues : Touch Her is Possible",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 15
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1),
                            color: Colors.black.withOpacity(0.1),
                            margin: EdgeInsets.only(bottom: 4),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  size: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 3),
                                  child: Text(
                                    '5 bagian dipublikasi'
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              '25 Draft'
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Followers',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 18
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/followesProf.png',
                                        scale: 0.8,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Andi Yang',
                                          style: TextStyle(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/followesProf.png',
                                        scale: 0.8,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Andi Yang',
                                          style: TextStyle(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/followesProf.png',
                                        scale: 0.8,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Andi Yang',
                                          style: TextStyle(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/followesProf.png',
                                        scale: 0.8,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          'Andi Yang',
                                          style: TextStyle(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
       ),
       bottomNavigationBar: navbarUser()
    );
  }
}