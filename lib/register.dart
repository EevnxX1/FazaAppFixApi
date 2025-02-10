import 'package:faza_citra/login.dart';
import 'package:flutter/material.dart';
// Mengimpor file eksternal yang berisi class ApiService yang sudah dijelaskan sebelumnya untuk menangani API.
import 'services/api_service.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // Mengontrol input teks pada form registrasi (name, email, password).
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // isLoading: Boolean untuk menampilkan indikator loading saat registrasi.
  bool _isLoading = false;

  // masuk Ke Fungsi Register
  void _register() async {
    // setState(): Digunakan untuk memperbarui state widget, seperti mengganti nilai
    setState(() {
      _isLoading = true;
    });

    // try-catch-finally:
    // * Jika Registerasi berhasil, hasilnya diproses (contoh: ditampilkan dengan print()).
    try {
      // ApiService().register(): Memanggil fungsi register dari api_service.dart.
      final apiService = ApiService(); //dari class di halaman api_service
      final result = await apiService.register(_usernameController.text, _emailController.text, _passwordController.text);
      
      // Handle successful Register (e.g., navigate to home screen)
      Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => loginPage()),
      );

      print(result);  // Or save the token, etc.

    // * Jika gagal, pesan error dicetak.
    } catch (e) {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(e.toString()),
        backgroundColor: Colors.red, // Warna merah untuk error
        duration: Duration(seconds: 3),
      ),
    );
      print(e);
    // * Bagian finally memastikan bahwa indikator loading dimatikan setelah proses login selesai.
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }


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
                    margin: EdgeInsets.only(top: 25, bottom: 18),
                    width: screenWidht * 0.8,
                    child: TextField(
                      // controller: Menghubungkan input dengan _usernameController
                      controller: _usernameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 18),
                        labelText: 'Username',
                        hintText: 'Ketikkan username Kamu',
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
                    margin: EdgeInsets.only(bottom: 18),
                    child: TextField(
                      // controller: Menghubungkan input dengan _emailController
                      controller: _emailController,
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
                    margin: EdgeInsets.only(bottom: 18),
                    child: TextField(
                      // controller: Menghubungkan input dengan _passwordController
                      controller: _passwordController,
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
                    margin: EdgeInsets.only(bottom: 15),
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
                    margin: EdgeInsets.only(bottom: 25),
                    width: screenWidht * 0.8,
                    height: 50,
                    child: TextButton(
                      // jika klik Sign Up akan menuju ke fungsi register
                      onPressed: _register,
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.purple.shade200,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                      child: Text(
                        // Jika _isLoading == true, menampilkan Prosess...
                        _isLoading ? 'Prosess..':'Sign Up',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidht * 0.8,
                    margin: EdgeInsets.only(bottom: 10),
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
                    margin: EdgeInsets.only(bottom: 15),
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
                              height: 35,
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
                              height: 40,
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
                              height: 25,
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
                              height: 25,
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