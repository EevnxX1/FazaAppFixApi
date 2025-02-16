 import 'package:faza_citra/proper/navbar_user.dart';
import 'package:faza_citra/services/api_service.dart';
import 'package:faza_citra/write_edit.dart';
import 'package:flutter/material.dart';
import './home.dart';
import './search2.dart';
import './write1.dart';
import './write2.dart';

class write4Page extends StatefulWidget {
  const write4Page({super.key});

  @override
  State<write4Page> createState() => _write4PageState();
}

class _write4PageState extends State<write4Page> {
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
          'Cerita Anda',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20
          ),
        ),
        centerTitle: true,
       ),
       body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              Container(
                height: screenHeight,
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
                    builder: (context) => WriteEdit(
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
                              'Edit Cerita'
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
            ],
          ),
        ),
       ),
       bottomNavigationBar: navbarUser()
    );
  }
}