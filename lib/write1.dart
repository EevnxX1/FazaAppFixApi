import 'package:flutter/material.dart';
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
      appBar: AppBar(
        backgroundColor: colorApp,
        leadingWidth: 150,
        leading: Image.asset('assets/logo2.png'),
        actions: [
          InkWell(
            onTap: () {
              
            },
            child: Image.asset('assets/Sliders.png'),
          ),
          Container(
            margin: EdgeInsets.only(right: 20, left: 20),
            child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return profilePage();
                  }
                ),
                );
            },
            child: Image.asset('assets/iconProfile.png'),
          ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 15, right: 15),
          child: Column(
            children: [
              InkWell(
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
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) {
                //     return write1Page();
                //   }
                // ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}