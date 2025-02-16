import 'package:cached_network_image/cached_network_image.dart';
import 'package:faza_citra/proper/appbar_user.dart';
import 'package:faza_citra/proper/navbar_user.dart';
import 'package:faza_citra/proper/view_books.dart';
import 'package:flutter/material.dart';
import 'services/api_service.dart';
import './home.dart';
import './profile.dart';
import './search2.dart';
import './write2.dart';
import './write3.dart';
import './write4.dart';

class write1Page extends StatefulWidget {
  const write1Page({super.key});

  @override
  State<write1Page> createState() => _write1PageState();
}

class _write1PageState extends State<write1Page> {
  

  @override
  Widget build(BuildContext context) {
    final colorApp = Color.fromRGBO(214, 183, 255, 1.0);
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      appBar: AppbarUser(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              Container(
                // height: screenHeight * 0.5,
                child: FutureBuilder<List<Map<String, dynamic>>>(
                future: ApiService().fetchUserBooks(), // Memanggil fungsi fetchUserBooks
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('Tidak ada buku untuk ditampilkan.'));
                  } else {
                    var books = snapshot.data!;
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        var book = books[index];
                        return Container(
                margin: EdgeInsets.only(bottom: 10),
                child: InkWell(
                onTap: () {
                  // Navigasi ke detail buku dengan mengirimkan ID buku
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => write2Page(
                        id_buku: book['id'],
                        id_user: book['user_id'],
                        genre: book['status'],
                        judul_buku: book['title'],
                        sinopsis: book['sinopsis'],
                        cover_book: book['cover_book'],
                    ),
                  ),
                  );
                },
                child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.09)
                ),
                child: Row(
                  children: [
                    Image.network(
  book['cover_book'],
  width: 100,
  height: 150,
  fit: BoxFit.cover,
  loadingBuilder: (context, child, loadingProgress) {
    if (loadingProgress == null) {
      return child;
    } else {
      return Center(child: CircularProgressIndicator());
    }
  },
  errorBuilder: (context, error, stackTrace) {
    return Center(child: Text('Gagal memuat gambar'));
  },
),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            child: Text(
                              'Lanjutkan menulis',
                              style: TextStyle(
                                fontSize: 14
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            width: 230,
                            child: Text(
                              book['title'],
                              // "The Sky Blues : Touch Her is Possible",
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
              );
                      },
                    );
                  }
                },
              ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return write4Page();
                      }
                    ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(11),
                    color: Colors.black.withOpacity(0.09),
                    child: Row(
                      children: [
                        Icon(
                          Icons.stacked_bar_chart,
                          size: 24,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 7),
                          child: Text(
                            'Edit cerita lain',
                            style: TextStyle(
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
                margin: EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return write3Page();
                      }
                    ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(11),
                    color: Colors.black.withOpacity(0.09),
                    child: Row(
                      children: [
                        Icon(
                          Icons.note_add_outlined,
                          size: 24,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 7),
                          child: Text(
                            'Buat cerita baru',
                            style: TextStyle(
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
      ),
      bottomNavigationBar: navbarUser()
    );
  }
}