import 'package:flutter/material.dart';
import './welcome_page.dart';

class flashPage extends StatefulWidget {
  const flashPage({super.key});

  @override
  State<flashPage> createState() => _flashPageState();
}

class _flashPageState extends State<flashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return welcomePage();
                          }
                          ),
                        );
    });
  }
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidht,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Pattern.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.4),
              BlendMode.dstATop
              )
          )
        ),
        child: Center(
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}