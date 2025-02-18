import 'package:cached_network_image/cached_network_image.dart';
import 'package:faza_citra/detail.dart';
import 'package:faza_citra/proper/appbar_user.dart';
import 'package:faza_citra/proper/navbar_user.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class search1Page extends StatefulWidget {
  final String searchQuery;
  const search1Page({super.key, required this.searchQuery});

  @override
  State<search1Page> createState() => _search1PageState();
}

class _search1PageState extends State<search1Page> {
  List books = [];
  bool isLoading = true;


  @override
  void initState() {
    super.initState();
    fetchSearchResults();
  }


  Future<void> fetchSearchResults() async {
    final url = Uri.parse('http://127.0.0.1:8000/api/books/search/${widget.searchQuery}');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        books = jsonDecode(response.body);
        isLoading = false;
      });
    } else {
      print("Gagal mengambil data hasil pencarian.");
    }
  }


  @override
  Widget build(BuildContext context) {
    final colorApp = Color.fromRGBO(214, 183, 255, 1.0);
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      appBar: AppbarUser(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(top: 25, right: 20, left: 20, bottom: 50),
          // hasil seacrh
          child: isLoading
          ? Center(child: CircularProgressIndicator())
          : books.isEmpty
            ? Center(
              child: Text("Buku Tidak Di Temukan"),
            )
            : ListView.builder(
              shrinkWrap: true,
              itemCount: books.length,
              itemBuilder: (context, index) {
                var book = books[index];
                return Container(
                margin: EdgeInsets.only(bottom: 25),
                child: Row(
                  children: [
                    CachedNetworkImage(
                      imageUrl: book['cover_book'],
                      fit: BoxFit.fill,
                      width: 130,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: screenWidht * 0.5,
                      height: 190,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: Icon(
                                  Icons.sort,
                                  size: 25,
                                ),
                                ),
                                Text(
                                  book['status'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            book['title'],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800
                            ),
                          ),
                          Text(
                            book['sinopsis'],
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                          Container(
                            width: 140,
                            height: 40,
                            decoration: BoxDecoration(
                              color: colorApp,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: TextButton(
                              onPressed: () {
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
                              child: Text(
                                'Baca cerita ini',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
              }
              )
          // hasil search
        ),
      ),
      bottomNavigationBar: navbarUser()
    );
  }
}