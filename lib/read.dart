import 'package:flutter/material.dart';
import './home.dart';
import './search2.dart';
import './write1.dart';

class readPage extends StatefulWidget {
  const readPage({
    super.key,
    required this.bab_number,
    required this.sub_judul,
    required this.isi_cerita,
  });

  final bab_number;
  final sub_judul;
  final isi_cerita;

  @override
  State<readPage> createState() => _readPageState();
}

class _readPageState extends State<readPage> {
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
            fontWeight: FontWeight.w800,
            fontSize: 20
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            width: 50,
            child: TextButton(
              onPressed: () {
                
              },
              child: Text(
                'Aa',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),
              ),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                
              },
              icon: Icon(
                Icons.settings_outlined,
                size: 27,
              ),
            ),
          )
        ],
       ),
       body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: screenWidht,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/bab1B.png'
                      )
                    )
                  ),
                  child: Center(
                    child: Text(
                      'Bab ${widget.bab_number} : ${widget.sub_judul}',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 17
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Text(
                    """${widget.isi_cerita}""",
                    style: TextStyle(
                      fontWeight: FontWeight.w400
                    ),
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