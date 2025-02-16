import 'package:faza_citra/proper/navbar_user.dart';
import 'package:faza_citra/read.dart';
import 'package:faza_citra/tambah_bab.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class write2Page extends StatelessWidget {
  const write2Page(
    {
      super.key,
      required this.id_buku,
      required this.id_user,
      required this.genre,
      required this.judul_buku,
      required this.sinopsis,
      required this.cover_book,
    }
  );
  final id_buku;
  final id_user;
  final genre;
  final judul_buku;
  final sinopsis;
  final cover_book;

  Future<List<Map<String, dynamic>>> fetchBabList() async {
    final url = Uri.parse('http://127.0.0.1:8000/api/books/$id_buku/babs');

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.map((bab) => {
          'bab_number': bab['bab_number'],
          'sub_title': bab['sub_title'],
          'body': bab['body'],
        }).toList();
      } else {
        throw Exception('Gagal mengambil data bab');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }


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
          this.judul_buku,
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
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/wilB.png',
                      )
                    )
                    ),
                  child: Container(
                    alignment: Alignment.topRight,
                    child: InkWell(
                    onTap: () {
                      
                    },
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.withOpacity(0.9)
                      ),
                      child: Icon(
                        Icons.edit_outlined
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
                          controller: TextEditingController(
                            text: this.judul_buku
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.w900
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 12, left: 20, bottom: 12),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: () {
                                
                              },
                              icon: Icon(
                                Icons.edit_outlined
                              ),
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
                          controller: TextEditingController(
                            text: this.sinopsis,
                          ),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.5)
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 15, left: 20, bottom: 15),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: () {
                                
                              },
                              icon: Icon(
                                Icons.edit_outlined
                              ),
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
                            text: this.genre,
                          ),
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 15, left: 20, bottom: 15),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: () {
                                
                              },
                              icon: Icon(
                                Icons.edit_outlined
                              ),
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
                        width: screenWidht,
                        height: screenHeight * 0.1,
                        child: Expanded(
                        child: FutureBuilder<List<Map<String, dynamic>>>(
                          future: fetchBabList(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.waiting) {
                              return Center(child: CircularProgressIndicator());
                            } else if (snapshot.hasError) {
                              return Center(child: Text("Belum ada bab"));
                            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                              return Center(child: Text("Belum ada bab"));
                            }

                            List<Map<String, dynamic>> babList = snapshot.data!;

                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: babList.length,
                              itemBuilder: (context, index) {
                              final bab = babList[index];
                              return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: InkWell(
                          onTap: () {
                            // Navigasi ke detail buku dengan mengirimkan ID buku
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => readPage(
                                bab_number: bab['bab_number'],
                                sub_judul: bab['sub_title'],
                                isi_cerita: bab['body'],
                              ),
                            ),
                            );
                          },
                          child: Container(
                            width: screenWidht,
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withOpacity(0.09)
                            ),
                            child: Text(
                              'Bab ${bab['bab_number']} : ${bab['sub_title']}',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ),
                      );
                  },
                );
              },
            ),
          ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: InkWell(
                          onTap: () {
                            // Navigasi ke detail buku dengan mengirimkan ID buku
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => tambahBabPage(
                                id_buku: this.id_buku,
                                judul_buku: this.judul_buku,
                                cover_buku: this.cover_book,
                              ),
                            ),
                            );
                          },
                          child: Container(
                            width: screenWidht,
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withOpacity(0.09)
                            ),
                            child: Text(
                              'Tambah Bab +',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
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
        bottomNavigationBar: navbarUser()
    );
  }
}