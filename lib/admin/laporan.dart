import 'package:flutter/material.dart';

class laporanPage extends StatefulWidget {
  const laporanPage({super.key});

  @override
  State<laporanPage> createState() => _laporanPageState();
}

class _laporanPageState extends State<laporanPage> {
  @override
  Widget build(BuildContext context) {
    final colorApp = Color.fromRGBO(214, 183, 255, 1.0);
    final colorApp2 = Color.fromRGBO(233, 221, 248, 1);
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 15),
          child: InkWell(
            onTap: () {
              
            },
            child: Icon(
              Icons.chevron_left_rounded,
              size: 45,
            ),
          )
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Image.asset(
            'assets/logo2.png'
            ),
          )
        ],
        backgroundColor: colorApp,
        toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column( //Laporan Cerita dan Komentar
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black26
                    )
                  )
                ),
                child: Column( // Judul Dan Isi Laporan Cerita
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        'LAPORAN CERITA',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      child: Column( // Isi beberapa laporan Cerita
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: colorApp2.withOpacity(0.4)
                                ),
                                child: Row( // Gambar dan isi pada laporan cerita
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Image.asset(
                                        'assets/coverLaporan1.png'
                                      ),
                                    ),
                                    Container(
                                      child: Column( // isi teks laporan cerita
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 10),
                                            width: screenWidht * 0.62,
                                            child: Text.rich(
                                            TextSpan(
                                              text: 'Pengguna : \"Zahr44 ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'memposting cerita baru : \"'
                                                ),
                                                TextSpan(
                                                  text: 'The Day I Was Erased\"',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w900
                                                  )
                                                ),
                                              ]
                                            )
                                          ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                                              decoration: BoxDecoration(
                                                color: Colors.green[300],
                                                borderRadius: BorderRadius.circular(8)
                                              ),
                                              child: Text(
                                                'Lihat Detail +',
                                                style: TextStyle(
                                                  color: Colors.white
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: colorApp2.withOpacity(0.4)
                                ),
                                child: Row( // Gambar dan isi pada laporan cerita
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Image.asset(
                                        'assets/coverLaporan2.png'
                                      ),
                                    ),
                                    Container(
                                      child: Column( // isi teks laporan cerita
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 10),
                                            width: screenWidht * 0.62,
                                            child: Text.rich(
                                            TextSpan(
                                              text: 'Pengguna : \"DAN1S ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'memposting bab baru : \"'
                                                ),
                                                TextSpan(
                                                  text: '\"Menemukanmu\" pada cerita...\"',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w900
                                                  )
                                                ),
                                              ]
                                            )
                                          ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                                              decoration: BoxDecoration(
                                                color: Colors.green[300],
                                                borderRadius: BorderRadius.circular(8)
                                              ),
                                              child: Text(
                                                'Lihat Detail +',
                                                style: TextStyle(
                                                  color: Colors.white
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: colorApp2.withOpacity(0.4)
                                ),
                                child: Row( // Gambar dan isi pada laporan cerita
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: Image.asset(
                                        'assets/coverLaporan3.png'
                                      ),
                                    ),
                                    Container(
                                      child: Column( // isi teks laporan cerita
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 10),
                                            width: screenWidht * 0.62,
                                            child: Text.rich(
                                            TextSpan(
                                              text: 'Pengguna : \"SyakilaMb_ ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'memposting cerita baru : \"'
                                                ),
                                                TextSpan(
                                                  text: 'What I Leave Behind\"',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w900
                                                  )
                                                ),
                                              ]
                                            )
                                          ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                                              decoration: BoxDecoration(
                                                color: Colors.green[300],
                                                borderRadius: BorderRadius.circular(8)
                                              ),
                                              child: Text(
                                                'Lihat Detail +',
                                                style: TextStyle(
                                                  color: Colors.white
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          
                        },
                        child: Container(
                          width: 120,
                          decoration: BoxDecoration(
                            color: colorApp2.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 35,
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        'LAPORAN KOMENTAR',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: colorApp2.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(10)
                              ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Image.asset(
                                        'assets/profileML1.png'
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 7),
                                            width: screenWidht * 0.73,
                                            child: Text.rich(
                                              TextSpan(
                                                text: 'Pengguna : XYZABB_ ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 12
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: 'melaporkan cerita \"Diatas...\"',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.normal
                                                    )
                                                  )
                                                ]
                                              )
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: 7),
                                                  child: InkWell(
                                                    onTap: () {
                                                      
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                                                      decoration: BoxDecoration(
                                                        color: Colors.green[300],
                                                        borderRadius: BorderRadius.circular(8)
                                                      ),
                                                      child: Text(
                                                        'Lihat Detail +',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: InkWell(
                                                    onTap: () {
                                                      
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                                                      decoration: BoxDecoration(
                                                        color: Colors.red[300],
                                                        borderRadius: BorderRadius.circular(8)
                                                      ),
                                                      child: Text(
                                                        'Selesai',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                          ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: colorApp2.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(10)
                              ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Image.asset(
                                        'assets/profileML2.png'
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 7),
                                            width: screenWidht * 0.73,
                                            child: Text.rich(
                                              TextSpan(
                                                text: 'Pengguna : RayyaD ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 12
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: 'melaporkan cerita \"kamu...\"',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.normal
                                                    )
                                                  )
                                                ]
                                              )
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: 7),
                                                  child: InkWell(
                                                    onTap: () {
                                                      
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                                                      decoration: BoxDecoration(
                                                        color: Colors.green[300],
                                                        borderRadius: BorderRadius.circular(8)
                                                      ),
                                                      child: Text(
                                                        'Lihat Detail +',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: InkWell(
                                                    onTap: () {
                                                      
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                                                      decoration: BoxDecoration(
                                                        color: Colors.red[300],
                                                        borderRadius: BorderRadius.circular(8)
                                                      ),
                                                      child: Text(
                                                        'Selesai',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                          ),
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                color: colorApp2.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(10)
                              ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Image.asset(
                                        'assets/profileML3.png'
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 7),
                                            width: screenWidht * 0.73,
                                            child: Text.rich(
                                              TextSpan(
                                                text: 'Pengguna : Penasenja ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 12
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: 'melaporkan cerita \"Badai...\"',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.normal
                                                    )
                                                  )
                                                ]
                                              )
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: 7),
                                                  child: InkWell(
                                                    onTap: () {
                                                      
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                                                      decoration: BoxDecoration(
                                                        color: Colors.green[300],
                                                        borderRadius: BorderRadius.circular(8)
                                                      ),
                                                      child: Text(
                                                        'Lihat Detail +',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: InkWell(
                                                    onTap: () {
                                                      
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                                                      decoration: BoxDecoration(
                                                        color: Colors.red[300],
                                                        borderRadius: BorderRadius.circular(8)
                                                      ),
                                                      child: Text(
                                                        'Selesai',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          
                        },
                        child: Container(
                          width: 120,
                          decoration: BoxDecoration(
                            color: colorApp2.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 35,
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
                
              },
            ),
            IconButton(
              icon: Icon(
                Icons.library_books_outlined,
                size: 28,
              ),
              onPressed: () {
                
              },
            ),
            IconButton(
              icon: Icon(
                Icons.chat_outlined,
                size: 28,
              ),
              onPressed: () {
                
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