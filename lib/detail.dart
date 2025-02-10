import 'package:flutter/material.dart';
import './home.dart';
import './read.dart';
import './search2.dart';
import './write1.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
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
            fontWeight: FontWeight.w800
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
                  Image.asset(
                    'assets/wilB.png',
                  ),
                  Text(
                    'Where I Live',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 23
                    ),
                  ),
                  Text(
                    'Brenda Rufener',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.07),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: TextButton(
                      onPressed: () {
                        
                      },
                      child: Text(
                        'Baca Cerita Ini',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          fontSize: 14
                        ),
                      ),
                    ),
                  ),
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
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          fontSize: 14
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 162,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sinopsis :',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18
                    ),
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and ...',
                    textAlign: TextAlign.justify,
                  ),
                  InkWell(
                    onTap: () {
                      
                    },
                    child: Text(
                      'Baca Selengkapnya...',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 15
                      ),
                    ),
                  )
                ],
               ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              color: Colors.black.withOpacity(0.25),
              height: 1,
            ),
            Container(
              height: 300,
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      'Bab Cerita',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return readPage();
                          }
                          ),
                        );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.07),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      width: screenWidht,
                      child: Text(
                        'Bab 1 : Found You',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return readPage();
                          }
                          ),
                        );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.07),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      width: screenWidht,
                      child: Text(
                        'Bab 2 : Nice to meet you, Rin',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return readPage();
                          }
                          ),
                        );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.07),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      width: screenWidht,
                      child: Text(
                        'Bab 3 : Once upon a time',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return readPage();
                          }
                          ),
                        );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.07),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      width: screenWidht,
                      child: Text(
                        'Bab 4 : Nice to meet you, Ren',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return readPage();
                          }
                          ),
                        );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.07),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      width: screenWidht,
                      child: Text(
                        'Bab 5 : Once upon a time',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                        ),
                      ),
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