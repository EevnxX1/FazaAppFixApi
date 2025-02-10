import 'package:flutter/material.dart';
import './home.dart';
import './search1.dart';
import './write1.dart';

class search2Page extends StatefulWidget {
  const search2Page({super.key});

  @override
  State<search2Page> createState() => _search2PageState();
}

class _search2PageState extends State<search2Page> {
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
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return search1Page();
                  }
                ),
                );
                },
                icon: Icon(
                  Icons.search
                ),
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
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Wrap(
                  spacing: 2.0,
                  runSpacing: 6.0,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: colorApp.withOpacity(0.5)
                        ),
                        child: Text(
                          'Romance',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13
                          ),
                        ),
                      ),
                    ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: colorApp.withOpacity(0.5)
                        ),
                        child: Text(
                          'Thriller',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13
                          ),
                        ),
                      ),
                    ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: colorApp.withOpacity(0.5)
                        ),
                        child: Text(
                          'Action Komedi',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13
                          ),
                        ),
                      ),
                    ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: colorApp.withOpacity(0.5)
                        ),
                        child: Text(
                          'Fan Action',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13
                          ),
                        ),
                      ),
                    ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: colorApp.withOpacity(0.5)
                        ),
                        child: Text(
                          'Romance Komedi',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13
                          ),
                        ),
                      ),
                    ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: colorApp.withOpacity(0.5)
                        ),
                        child: Text(
                          'Action Horor',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13
                          ),
                        ),
                      ),
                    ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: InkWell(
                      onTap: () {
                        
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: colorApp.withOpacity(0.5)
                        ),
                        child: Text(
                          'Thriller Horor',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13
                          ),
                        ),
                      ),
                    ),
                    ),
                  ],
                )
              ),
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
                            'New Arrival',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Image.asset(
                                'assets/blB.png',
                                height: 165,
                              ),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Image.asset(
                                'assets/noiseB.png',
                                height: 165,
                              ),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Image.asset(
                                'assets/ladrB.png',
                                height: 165,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
                            'Thriller',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Image.asset(
                                'assets/nkbyB.png',
                                height: 165,
                              ),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Image.asset(
                                'assets/flagB.png',
                                height: 165,
                              ),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Image.asset(
                                'assets/ikzsB.png',
                                height: 165,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
                            'New Arrival',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 17,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Image.asset(
                                'assets/rbB.png',
                                height: 165,
                              ),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Image.asset(
                                'assets/htealsB.png',
                                height: 165,
                              ),
                            ),
                          ),
                          Container(
                            child: InkWell(
                              onTap: () {
                                
                              },
                              child: Image.asset(
                                'assets/ttouB.png',
                                height: 165,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) {
                //     return search1Page();
                //   }
                // ),
                // );
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