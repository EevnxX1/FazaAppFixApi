import 'package:flutter/material.dart';
import './login.dart';
import './register.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      body: Container(
        width: screenWidht,
        height: screenHeight,
        child: Column(
          children: <Widget>[
            Container(
              height: screenHeight * 0.43,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Frame1.png'),
                  fit: BoxFit.fill
                )
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              height: screenHeight * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Welcome To ',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          'Ly',
                          style: TextStyle(
                            fontSize: 27,
                            color: Colors.purple.shade200
                          ),
                        ),
                        Text(
                          'Library!',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.purple.shade200
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Log in to explore our infinite collection of books.',
                    style: TextStyle(
                      fontSize: 14
                    ),
                  ),
                  Container(
                    width: 330,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return loginPage();
                          }
                          ),
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.purple.shade200,
                        foregroundColor: Colors.black87
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'don\'t have an account? '
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return RegisterPage();
                              }
                            ),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.purple.shade200,
                              fontWeight: FontWeight.w700
                            ),
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
    );
  }
}