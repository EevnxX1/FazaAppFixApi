import 'package:faza_citra/proper/appbar_user.dart';
import 'package:faza_citra/proper/content_home.dart';
import 'package:faza_citra/proper/navbar_user.dart';
import 'package:flutter/material.dart';
import './profile.dart';
import 'services/preference_service.dart';
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
                      'My Books',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 290,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        myBooks(
                          content: 'konten', 
                          gambar: 'assets/wavesB.png', 
                          judul: 'Waves', 
                          penulis: 'Ingrid Chardbert'
                        )
                      ],
                    )
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
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/iwtsmfB.png',
                                scale: 0.8,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'I Went To See..',
                                        style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Ingrid Chardbert',
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
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/siktcB.png',
                                scale: 0.8,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Something Is..',
                                        style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Ingrid Chardbert',
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
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/catboyB.png',
                                scale: 0.8,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        'Catboy ',
                                        style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Ingrid Chardbert',
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
                        ),
                      ],
                    )
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