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
                margin: EdgeInsets.only(bottom: 15),
                child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return write2Page();
                      }
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
                    Image.asset(
                      'assets/tsbB.png'
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
                              "The Sky Blues : Touch Her is Possible",
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
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return write2Page();
                      }
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
                    Image.asset(
                      'assets/parkedB.png'
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
                              "Parked",
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
                                    '25 bagian dipublikasi'
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
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return write2Page();
                      }
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
                    Image.asset(
                      'assets/attB.png'
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
                              "All This Time",
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
                                    '0 bagian dipublikasi'
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