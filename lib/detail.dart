import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import './home.dart';
import './read.dart';
import './search2.dart';
import './write1.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class detailPage extends StatefulWidget {
  final String id_buku;
  final String cover_buku;
  final String judul_buku;
  final String nama_buat;
  final String sinopsis;
  const detailPage({
    super.key,
    required this.id_buku,
    required this.cover_buku,
    required this.judul_buku,
    required this.nama_buat,
    required this.sinopsis
  });

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {

  Future<List<Map<String, dynamic>>> fetchBabList() async {
    final url = Uri.parse('http://127.0.0.1:8000/api/books/${widget.id_buku}/babs');

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.map((bab) => {
          'id': bab['id'],
          'book_id': bab['book_id'],
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
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    final colorApp = Color.fromRGBO(214, 183, 255, 1.0);
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
          'Baca Cerita',
          style: TextStyle(
            fontWeight: FontWeight.w700
          ),
        ),
        centerTitle: true,
       ),
       body: SingleChildScrollView(
        child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: screenWidht,
        child: Column(
          children: [
            Container(
              height: 285,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 220,
                    child: CachedNetworkImage(
                      imageUrl: widget.cover_buku,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    widget.judul_buku,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 23
                    ),
                  ),
                  Text(
                    widget.nama_buat,
                    style: TextStyle(
                      color: Colors.black54
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 11),
              width: screenWidht * 0.54,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 53,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.black54,
                        ),
                        Text(
                          '856',
                          style: TextStyle(
                            color: Colors.black54
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.star_border,
                          color: Colors.black54,
                        ),
                        Text(
                          '167',
                          style: TextStyle(
                            color: Colors.black54
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.sort,
                          color: Colors.black54,
                        ),
                        Text(
                          '15 Bab',
                          style: TextStyle(
                            color: Colors.black54
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              width: screenWidht,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(
                  //   height: 45,
                  //   padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
                  //   decoration: BoxDecoration(
                  //     color: Colors.black.withOpacity(0.07),
                  //     borderRadius: BorderRadius.circular(50)
                  //   ),
                  //   child: TextButton(
                  //     onPressed: () {
                        
                  //     },
                  //     child: Text(
                  //       'Baca Cerita Ini',
                  //       style: TextStyle(
                  //         fontWeight: FontWeight.w700,
                  //         color: Colors.black,
                  //         fontSize: 13
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    height: 45,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.07),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: TextButton(
                      onPressed: () {
                        
                      },
                      child: Text(
                        'Tambah Ke Bacaan',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 13
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidht,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Text(
                    'Sinopsis :',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18
                    ),
                  ),
                  ),
                  Text(
                    widget.sinopsis,
                    textAlign: TextAlign.justify,
                  ),
                ],
               ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              color: Colors.black.withOpacity(0.25),
              height: 1,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    child: Text(
                      'Bab Cerita',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18
                      ),
                    ),
                  ),
                  Container(
                        width: screenWidht,
                        child: FutureBuilder<List<Map<String, dynamic>>>(
                          future: fetchBabList(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.waiting) {
                              return Center(child: CircularProgressIndicator());
                            } else if (snapshot.hasError) {
                              return Center(child: Text("Gagal Mengambil Bab Cerita", 
                              style: TextStyle(
                                fontWeight: FontWeight.w500
                              ),
                              ));
                            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                              return Center(child: Text("Belum ada Bab Cerita", 
                              style: TextStyle(
                                fontWeight: FontWeight.w500
                              ),
                              ));
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
                                bab_number: bab['bab_number'].toString(),
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
                                fontWeight: FontWeight.w700
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