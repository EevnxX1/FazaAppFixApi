 import 'package:flutter/material.dart';

class ManajemenCPage extends StatefulWidget {
  const ManajemenCPage({super.key});

  @override
  State<ManajemenCPage> createState() => _ManajemenCPageState();
}

class _ManajemenCPageState extends State<ManajemenCPage> {
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
          child: Column(
            children: [
              // search
              Container(
                width: screenWidht,
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(10)
                ),
                child: Center(
                child: Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                width: screenWidht * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Container(
                      width: 100,
                      child: Row(
                        children: [
                          Container(
                            child: IconButton(
                              onPressed: () {
                                
                              },
                              icon: Icon(
                                Icons.filter_alt_outlined,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {
                                
                              },
                              icon: Icon(
                                Icons.search,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 20, top: 12),
                    hintText: 'Masukkan judul / pengguna',
                    hintStyle: TextStyle(
                      color: Colors.black38,
                    )
                  ),
                ),
              ),
              ),
              ),
              // End Search
              // page Content
              Container(
                child: Column(
                  children: [
                    // Alfabet
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.only(left: 27),
                      width: screenWidht,
                      color: Colors.black.withAlpha(20),
                      child: Text(
                        'A',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.black54
                        ),
                      ),
                    ),
                    // Alfabet
                    Container(
                      width: screenWidht,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // End page Content
              // page Content
              Container(
                child: Column(
                  children: [
                    // Alfabet
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.only(left: 27),
                      width: screenWidht,
                      color: Colors.black.withAlpha(20),
                      child: Text(
                        'B',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.black54
                        ),
                      ),
                    ),
                    // Alfabet
                    Container(
                      width: screenWidht,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                          //Content
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            width: screenWidht,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: Image.asset(
                                    'assets/A1.png',
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          'Alur Cinta yang...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'pengguna : @Abee123',
                                          style: TextStyle(
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                    
                                    onTap: () {
                                      
                                    },
                                    splashColor: Colors.transparent, // Menghilangkan efek splash
                                    highlightColor: Colors.transparent, // Menghilangkan efek highlight (fade)
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus cerita',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          //End Content
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // End page Content
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