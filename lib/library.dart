import 'package:faza_citra/proper/appbar_user.dart';
import 'package:faza_citra/proper/navbar_user.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarUser(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Wrap(
            spacing: 10,
            runSpacing: 20,
            children: [
              Container(
                width: 120,
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/catboyB.png',
                        fit: BoxFit.fill,
                        width: 120,
                        height: 190,
                      ),
                      Container(
                        // width: 100,
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'Not Here to be someone like you bruhhhhhh',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 120,
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/catboyB.png',
                        fit: BoxFit.fill,
                        width: 120,
                        height: 190,
                      ),
                      Container(
                        // width: 100,
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'Not Here to be someone like you bruhhhhhh',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 120,
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/catboyB.png',
                        fit: BoxFit.fill,
                        width: 120,
                        height: 190,
                      ),
                      Container(
                        // width: 100,
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'Not Here to be someone like you bruhhhhhh',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 120,
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/catboyB.png',
                        fit: BoxFit.fill,
                        width: 120,
                        height: 190,
                      ),
                      Container(
                        // width: 100,
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'Not Here to be someone like you bruhhhhhh',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 120,
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/catboyB.png',
                        fit: BoxFit.fill,
                        width: 120,
                        height: 190,
                      ),
                      Container(
                        // width: 100,
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'Not Here to be someone like you bruhhhhhh',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
      bottomNavigationBar: navbarUser(),
    );
  }
}