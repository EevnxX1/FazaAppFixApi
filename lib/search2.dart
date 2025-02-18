import 'package:cached_network_image/cached_network_image.dart';
import 'package:faza_citra/detail.dart';
import 'package:faza_citra/proper/navbar_user.dart';
import 'package:flutter/material.dart';
import './home.dart';
import './search1.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class search2Page extends StatefulWidget {
  const search2Page({super.key});

  @override
  State<search2Page> createState() => _search2PageState();
}

class _search2PageState extends State<search2Page> {
  final List<String> genres = ['Horor', 'Fantasy', 'Romance', 'Action', 'Action Komedi', 'Romance Komedi', 'Action Horor', 'Thriller Horor'];
  Map<String, List> booksByGenre = {}; // Menyimpan buku berdasarkan genre


  @override
  void initState() {
    super.initState();
    fetchAllGenres();
  }


  Future<void> fetchBooksByGenre(String genre) async {
    final url = Uri.parse('http://127.0.0.1:8000/api/books/genre?genre=$genre');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        booksByGenre[genre] = jsonDecode(response.body);
      });
    } else {
      print("Gagal mengambil data buku untuk genre $genre.");
    }
  }

  void fetchAllGenres() {
    for (String genre in genres) {
      fetchBooksByGenre(genre);
    }
  } 


  // Pindah ke halaman hasil pencarian
  void navigateToSearchResults(String query) {
    if (query.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => search1Page(searchQuery: query),
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    final colorApp = Color.fromRGBO(214, 183, 255, 1.0);
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorApp,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50)
          ),
          width: screenWidht,
          child: TextField(
            onSubmitted: navigateToSearchResults,
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.search
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 20, top: 13),
              hintText: 'Search for Book?'
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            children: genres.map((genre) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            genre.toUpperCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              letterSpacing: 0.01
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              
                            },
                            child: Text(
                              'Lihat selengkapnya',
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      child: booksByGenre[genre] == null 
                      ? Center(child: CircularProgressIndicator()) // Loading Indicator
                      :ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: booksByGenre[genre]!.length,
                        itemBuilder: (context, index) {
                          var book = booksByGenre[genre]![index];
                          return  Container(
                            margin: EdgeInsets.only(right: 15),
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
                              child: CachedNetworkImage(
                                imageUrl: book['cover_book'],
                                width: 130,
                                fit: BoxFit.fill,
                              )
                            ),
                          );
                        }
                      ) 
                    ),
                  ],
                ),
              ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
      bottomNavigationBar: navbarUser()
    );
  }
} 