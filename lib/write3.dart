import 'package:flutter/material.dart';
import './home.dart';
import './search2.dart';
import './write1.dart';

class write3Page extends StatefulWidget {
  const write3Page({super.key});

  @override
  State<write3Page> createState() => _write3PageState();
}

class _write3PageState extends State<write3Page> {
  @override
  Widget build(BuildContext context) {
    final colorApp = Color.fromRGBO(214, 183, 255, 1.0);
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      appBar: AppBar(
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
          'Buat Cerita',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20
          ),
        ),
        centerTitle: true,
       ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(bottom: 40),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.09),
                    ),
                  child: Container(
                    alignment: Alignment.center,
                    child: InkWell(
                    onTap: () {
                      
                    },
                    child: Container(
                      child: Icon(
                        Icons.add_photo_alternate_sharp,
                        size: 80,
                      ),
                    ),
                  ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, bottom: 5),
                        child: Text(
                        'Judul Cerita',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16
                        ),
                      ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.09)
                        ),
                        child: TextField(
                          style: TextStyle(
                            fontWeight: FontWeight.w900
                          ),
                          decoration: InputDecoration(
                            hintText: 'Tambahkan Judul Cerita',
                            contentPadding: EdgeInsets.only(top: 12, left: 20, bottom: 12),
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.post_add_outlined
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, bottom: 5),
                        child: Text(
                        'Sinopsis',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16
                        ),
                      ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.09)
                        ),
                        child: TextField(
                          maxLines: null,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.5)
                          ),
                          decoration: InputDecoration(
                            hintText: 'Tambahkan Sinopsis',
                            contentPadding: EdgeInsets.only(top: 15, left: 20, bottom: 15),
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.post_add_outlined
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.09)
                        ),
                        child: TextField(
                          maxLines: null,
                          controller: TextEditingController(
                            text: """Hak cipta di lindungi undang-undang"""
                          ),
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 15, left: 20, bottom: 15),
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.post_add_outlined
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  color: Colors.black.withOpacity(0.09),
                  height: 2,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 7),
                        child: Text(
                          'Bab Cerita',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: InkWell(
                          onTap: () {
                            
                          },
                          child: Container(
                            width: screenWidht,
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withOpacity(0.09)
                            ),
                            child: Text(
                              'Tambahkan Bab Cerita Baru +',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          )
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
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return homePage();
                  }
                ),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                size: 28,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return search2Page();
                  }
                ),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.stacked_bar_chart,
                size: 28,
              ),
              onPressed: () {
                
              },
            ),
            IconButton(
              icon: Icon(
                Icons.edit,
                size: 28,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return write1Page();
                  }
                ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}