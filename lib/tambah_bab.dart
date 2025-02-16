import 'package:faza_citra/proper/navbar_user.dart';
import 'package:faza_citra/services/api_service.dart';
import 'package:faza_citra/write1.dart';
import 'package:flutter/material.dart';

class tambahBabPage extends StatefulWidget {
  const tambahBabPage({
    super.key,
    required this.id_buku,
    required this.judul_buku,
    required this.cover_buku,
  });

  final id_buku;
  final judul_buku;
  final cover_buku;

  @override
  State<tambahBabPage> createState() => _tambahBabPageState();
}

class _tambahBabPageState extends State<tambahBabPage> {
  final TextEditingController _babNumberController = TextEditingController();
  final TextEditingController _subJudulController = TextEditingController();
  final TextEditingController _isiCeritaController = TextEditingController();

  bool _isLoading = false;

  // masuk Ke Fungsi Register
  void _babBaru() async {
    // setState(): Digunakan untuk memperbarui state widget, seperti mengganti nilai
    setState(() {
      _isLoading = true;
    });
    // print(_babNumberController.text + _subJudulController.text + _isiCeritaController.text + widget.id_buku);
    // try-catch-finally:
    // * Jika Registerasi berhasil, hasilnya diproses (contoh: ditampilkan dengan print()).
    try {
      // ApiService().register(): Memanggil fungsi register dari api_service.dart.
      final apiService = ApiService(); //dari class di halaman api_service
      final result = await apiService.buatBab(
        _babNumberController.text, 
        _subJudulController.text, 
        _isiCeritaController.text, 
        widget.id_buku.toString()
        );
      
      // Handle successful Register (e.g., navigate to home screen)
      Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => write1Page()),
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
    final colorApp = Color.fromRGBO(214, 183, 255, 1.0);
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
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
          '${widget.judul_buku}',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20
          ),
        ),
        centerTitle: true,
       ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(bottom: 40),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/wilB.png',
                      )
                    )
                    ),
                  child: Container(
                    alignment: Alignment.topRight,
                    child: InkWell(
                    onTap: () {
                      
                    },
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.withOpacity(0.9)
                      ),
                      child: Icon(
                        Icons.edit_outlined
                      ),
                    ),
                  ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, bottom: 5),
                        child: Text(
                        'Bab Number',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16
                        ),
                      ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.09)
                        ),
                        child: TextField(
                          controller: _babNumberController,
                          style: TextStyle(
                            fontWeight: FontWeight.w900
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 12, left: 20, bottom: 12),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: () {
                                
                              },
                              icon: Icon(
                                Icons.edit_outlined
                              ),
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, bottom: 5),
                        child: Text(
                        'Sub Judul',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16
                        ),
                      ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.09)
                        ),
                        child: TextField(
                          controller: _subJudulController,
                          style: TextStyle(
                            fontWeight: FontWeight.w900
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 12, left: 20, bottom: 12),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: () {
                                
                              },
                              icon: Icon(
                                Icons.edit_outlined
                              ),
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, bottom: 5),
                        child: Text(
                        'Isi Cerita',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16
                        ),
                      ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.09)
                        ),
                        child: TextField(
                          controller: _isiCeritaController,
                          maxLines: null,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.5)
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 15, left: 20, bottom: 15),
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: () {
                                
                              },
                              icon: Icon(
                                Icons.edit_outlined
                              ),
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  color: Colors.black.withOpacity(0.09),
                  height: 2,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: InkWell(
                          onTap: _babBaru,
                          child: Container(
                            width: screenWidht,
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withOpacity(0.09)
                            ),
                            child: Text(
                              _isLoading ? 'Prosess..':'Tambah Bab',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: navbarUser()
    );
  }
}