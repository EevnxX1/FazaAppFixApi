import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        width: screenWidht,
        child: Column(
          children: <Widget>[
            Container(
              height: screenHeight * 0.36,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Pattern2.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                  Colors.purple.shade200.withOpacity(0.5),
                    BlendMode.dstATop
                  )
                  )
              ),
              child: Center(
                child: Image.asset(
                  'assets/logo.png',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              height: screenHeight * 0.55,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Get Started!',
                    style: TextStyle(
                      color: Colors.purple.shade300,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: screenWidht * 0.8,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 18),
                        labelText: 'Fullname',
                        hintText: 'Enter Your Full Name Here',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.5),
                          fontStyle: FontStyle.italic
                        ),
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.1
                        ),
                        floatingLabelStyle: TextStyle(
                          fontSize: 20
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.2),
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple.shade200,
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidht * 0.8,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 18),
                        labelText: 'Email',
                        hintText: 'Enter Your Email Here',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.5),
                          fontStyle: FontStyle.italic
                        ),
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.1
                        ),
                        floatingLabelStyle: TextStyle(
                          fontSize: 20
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.2),
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple.shade200,
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidht * 0.8,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 18),
                        labelText: 'Password',
                        hintText: 'Enter Your Password Here',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black.withOpacity(0.5),
                          fontStyle: FontStyle.italic
                        ),
                        labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.1
                        ),
                        floatingLabelStyle: TextStyle(
                          fontSize: 20
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.2),
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.purple.shade200,
                            width: 1.5
                          ),
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          child: Checkbox(
                          value: false, 
                          onChanged: (value) {
                            
                          },
                        ),
                        ),
                        Text(
                          ' I agree to the processing of all terms and conditions',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 11
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    width: screenWidht * 0.8,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.purple.shade200,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidht * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                       Container(
                        width: screenWidht * 0.27,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 1,
                        color: Colors.black,
                       ),
                       Text(
                        'Sign In With'
                       ),
                       Container(
                        width: screenWidht * 0.27,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 1,
                        color: Colors.black,
                       )
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidht * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: InkWell(
                            onTap: () {
                              
                            },
                            child: Image.asset(
                              'assets/google.png',
                              fit: BoxFit.fill,
                              height: 40,
                            ),
                          ),
                        ),
                        Container(
                          child: InkWell(
                            onTap: () {
                              
                            },
                            child: Image.asset(
                              'assets/apple.png',
                              fit: BoxFit.fill,
                              height: 45,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 2),
                          child: InkWell(
                            onTap: () {
                              
                            },
                            child: Image.asset(
                              'assets/fb.png',
                              fit: BoxFit.fill,
                              height: 30,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: InkWell(
                            onTap: () {
                              
                            },
                            child: Image.asset(
                              'assets/twt.png',
                              fit: BoxFit.fill,
                              height: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      )
    );
  }
}