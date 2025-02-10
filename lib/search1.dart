import 'package:flutter/material.dart';
import './home.dart';
import './write1.dart';

class search1Page extends StatefulWidget {
  const search1Page({super.key});

  @override
  State<search1Page> createState() => _search1PageState();
}

class _search1PageState extends State<search1Page> {
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
          padding: EdgeInsets.only(top: 25, right: 20, left: 20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/tfmB.png',
                      height: 200,
                    ),
                    Container(
                      width: screenWidht * 0.5,
                      height: 190,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.sort,
                                  size: 25,
                                ),
                                Text(
                                  '15 Bab',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'The First Move',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800
                            ),
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ...",
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
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/tmofB.png',
                      height: 200,
                    ),
                    Container(
                      width: screenWidht * 0.5,
                      height: 190,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.sort,
                                  size: 25,
                                ),
                                Text(
                                  '25 Bab',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'The Move On First',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800
                            ),
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ...",
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
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/lusB.png',
                      height: 200,
                    ),
                    Container(
                      width: screenWidht * 0.5,
                      height: 190,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.sort,
                                  size: 25,
                                ),
                                Text(
                                  '10 Bab',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'Move On First',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800
                            ),
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ...",
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
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/perfectedB.png',
                      height: 200,
                    ),
                    Container(
                      width: screenWidht * 0.5,
                      height: 190,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.sort,
                                  size: 25,
                                ),
                                Text(
                                  '32 Bab',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text(
                            'First Is My Move',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800
                            ),
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s ...",
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