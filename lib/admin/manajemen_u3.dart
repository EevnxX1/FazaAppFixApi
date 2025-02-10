import 'package:flutter/material.dart';

class ManajemenU3Page extends StatefulWidget {
  const ManajemenU3Page({super.key});

  @override
  State<ManajemenU3Page> createState() => _ManajemenU3PageState();
}

class _ManajemenU3PageState extends State<ManajemenU3Page> {
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
      body: Container(
              width: screenWidht,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Column(
                children: [
                  //Content
                  Container(
                            margin: EdgeInsets.only(bottom: 15),
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
                                  child: Container(
                                    child: Text(
                                      '@adminmaster',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
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
                                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus',
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
                            margin: EdgeInsets.only(bottom: 15),
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
                                  child: Container(
                                    child: Text(
                                      '@adminRara',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
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
                                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus',
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
                            margin: EdgeInsets.only(bottom: 15),
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
                                  child: Container(
                                    child: Text(
                                      '@adminAldi',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
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
                                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.red[300],
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Text(
                                        'Hapus',
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