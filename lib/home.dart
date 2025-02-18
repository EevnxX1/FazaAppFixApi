import 'package:cached_network_image/cached_network_image.dart';
import 'package:faza_citra/detail.dart';
import 'package:faza_citra/proper/appbar_user.dart';
import 'package:faza_citra/proper/navbar_user.dart';
import 'package:faza_citra/services/api_service.dart';
import 'package:flutter/material.dart';
import './profile.dart';
import 'services/preference_service.dart';
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<dynamic> books = []; // List untuk menyimpan data buku

  @override
  void initState() {
    super.initState();
    loadBooks();
  }

  Future<void> loadBooks() async {
    List<dynamic> data = await ApiService.fetchBooks();
    setState(() {
      books = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorApp = Color.fromRGBO(214, 183, 255, 1.0);
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    // final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      appBar: AppbarUser(),
      body: SingleChildScrollView(
        child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 27, bottom: 20, top: 25),
                    child: Text(
                      'List Books',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 290,
                    child: books.isEmpty
                      ? Center(child: CircularProgressIndicator()) // Loading indikator
                      : ListView.builder(
                      scrollDirection: Axis.horizontal, // ListView horizontal
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        var book = books[index];
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return detailPage(
                                    id_buku: book['id'].toString(),
                                    cover_buku: book['cover_book'],
                                    judul_buku: book['title'],
                                    nama_buat: book['username'],
                                    sinopsis: book['sinopsis'],
                                  );
                                }
                              ),
                              );
                            },
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Image.asset(
                              //   'assets/wavesB.png',
                              //   scale: 0.8,
                              // ),
                              Container(
                                height: 210,
                                width: 150,
                                child: CachedNetworkImage(
                                imageUrl: book['cover_book'],
                                fit: BoxFit.fill,
                              ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.only(top: 8),
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        book['title'],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        book['username'],
                                        style: TextStyle(
                                          color: Colors.black38
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          )
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 27, bottom: 20, top: 15),
                    child: Text(
                      'New Story',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 27, right: 20),
                          child: Image.asset(
                            'assets/tfmB.png',
                            scale: 0.9,
                          ),
                        ),
                        Container(
                          width: screenWidht * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 5),
                                // width: 100,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10),
                                      child: Icon(
                                      Icons.sort,
                                      size: 30,
                                    ),
                                    ),
                                    Text(
                                      '15 Bab',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 5),
                                child: Text(
                                  'The First Move',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 20),
                                child: Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s ...',
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: colorApp
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                    
                                      },
                                        child: Text(
                                          'Read this story',
                                          style: TextStyle(
                                            color: Colors.black
                                          ),
                                        ),
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
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 27, bottom: 20, top: 40),
                    child: Text(
                      'Continue Reading',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 290,
                    child: books.isEmpty
                      ? Center(child: CircularProgressIndicator()) // Loading indikator
                      : ListView.builder(
                      scrollDirection: Axis.horizontal, // ListView horizontal
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        var book = books[index];
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return detailPage(
                                    id_buku: book['id'].toString(),
                                    cover_buku: book['cover_book'],
                                    judul_buku: book['title'],
                                    nama_buat: book['username'],
                                    sinopsis: book['sinopsis'],
                                  );
                                }
                              ),
                              );
                            },
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Image.asset(
                              //   'assets/wavesB.png',
                              //   scale: 0.8,
                              // ),
                              Container(
                                height: 210,
                                width: 150,
                                child: CachedNetworkImage(
                                imageUrl: book['cover_book'],
                                fit: BoxFit.fill,
                              ),
                              ),
                              Container(
                                width: 150,
                                margin: EdgeInsets.only(top: 8),
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        book['title'],
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        book['username'],
                                        style: TextStyle(
                                          color: Colors.black38
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          )
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      ),
      bottomNavigationBar: navbarUser()
    );
  }
}