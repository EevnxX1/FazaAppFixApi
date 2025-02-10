import 'package:flutter/material.dart';
import 'manajemen_u2.dart';
import 'manajemen_u3.dart';

class ManajemenUPage extends StatefulWidget {
  const ManajemenUPage({super.key});

  @override
  State<ManajemenUPage> createState() => _ManajemenUPageState();
}

class _ManajemenUPageState extends State<ManajemenUPage> {
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
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(
                  width: 1,
                  color: Colors.black54
                ))
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ManajemenU3Page();
                  }
                ),
                );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  width: screenWidht,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Manajemen Akun Admin',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 15
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ManajemenU2Page();
                  }
                ),
                );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  width: screenWidht,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Manajemen Akun Pengguna',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 15
                          ),
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