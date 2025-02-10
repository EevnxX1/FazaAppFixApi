import 'package:flutter/material.dart';
import 'laporan.dart';
import 'manajemen_c.dart';
import 'manajemen_u.dart';

class homeAdminPage extends StatelessWidget {
  const homeAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorApp = Color.fromRGBO(214, 183, 255, 1.0);
    final colorApp2 = Color.fromRGBO(233, 221, 248, 1);
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container( 
                padding: EdgeInsets.only(top: 45, left: 25, right: 25),
                width: screenWidht,
                height: screenHeight * 0.35,
                color: colorApp,
              child: Column( //AppBar profile dan fitur
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row( // Profil Admin Dan Lonceng
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row( // Foto Profil Dan Nama Profil
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Image.asset(
                                  'assets/profilAdmin.png'
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      'Hi, Admin (Master)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16
                                      ),
                                    ),
                                    Text(
                                      'Name: Laely Maulidyah',
                                      style: TextStyle(
                                        fontSize: 13
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Icon(
                            Icons.notifications_none,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row( //Fitur Laporan
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: colorApp2,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 2,
                                  offset: Offset(2, 2),
                                )
                              ]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.menu_book_sharp,
                                  size: 40,
                                  color: Colors.black54,
                                ),
                                Text(
                                  'Cerita',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 14
                                  ),
                                ),
                                Text(
                                  'total: 1239',
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return laporanPage();
                                }
                              ),
                              );
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: colorApp2,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 2,
                                  offset: Offset(2, 2),
                                )
                              ]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.chat_outlined,
                                  size: 40,
                                  color: Colors.black54,
                                ),
                                Text(
                                  'Laporan',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 14
                                  ),
                                ),
                                Text(
                                  'total: 123',
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: colorApp2,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 2,
                                  offset: Offset(2, 2),
                                )
                              ]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.portrait,
                                  size: 40,
                                  color: Colors.black54,
                                ),
                                Text(
                                  'Pengguna',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 14
                                  ),
                                ),
                                Text(
                                  'total: 230',
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, 18),
                    child: Container(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 35),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: colorApp2,
                          offset: Offset(1, 1)
                        )
                      ]
                    ),
                    child: Text(
                      'DASHBOARD',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20
                      ),
                    ),
                  ),
                  )
                ],
              ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 25),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 22),
                      child: Image.asset(
                        'assets/kotakAdmin.png'
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 185,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    
                                  },
                                  child: Text(
                                    'Today',
                                    style: TextStyle(
                                      fontSize: 17
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    
                                  },
                                  child: Text(
                                    'Weekly',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900,
                                      decoration: TextDecoration.underline
                                    ),
                                    
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    
                                  },
                                  child: Text(
                                    'Mothly',
                                    style: TextStyle(
                                      fontSize: 17
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            width: 300,
                            child: Image.asset(
                              'assets/grafik.png',
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
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        width: screenWidht,
        decoration: BoxDecoration(
          color: colorApp
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home_outlined,
                size: 28,
              ),
              onPressed: () {
                
              },
            ),
            IconButton(
              icon: Icon(
                Icons.people_alt_outlined,
                size: 28,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ManajemenUPage();
                  }
                ),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.library_books_outlined,
                size: 28,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ManajemenCPage();
                  }
                ),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.chat_outlined,
                size: 28,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return laporanPage();
                  }
                ),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.edit_outlined,
                size: 28,
              ),
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}