import 'package:flutter/material.dart';
import './home.dart';
import './search2.dart';
import './write1.dart';

class readPage extends StatefulWidget {
  const readPage({super.key});

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
                      'Bab 1 : Find Your, Rin!',
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
                    """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and ...

Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. 

This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.

There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.""",
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