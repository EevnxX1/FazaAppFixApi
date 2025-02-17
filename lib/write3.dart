import 'package:faza_citra/proper/dropdown.dart';
import 'package:flutter/material.dart';
import './home.dart';
import './search2.dart';
import './write1.dart';
import 'services/api_service.dart';
// digunakan untuk mengelola file dalam sistem operasi, seperti mengambil gambar dari penyimpanan
import 'dart:io';
// Library untuk mengambil gambar dari kamera atau galeri
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';
import 'dart:html' as html;

class write3Page extends StatefulWidget {
  const write3Page({super.key});

  @override
  State<write3Page> createState() => _write3PageState();
}

class _write3PageState extends State<write3Page> {
  // bjek yang digunakan untuk menyimpan dan mengelola status nilai yang dipilih pada dropdown.
  final ValueNotifier<String?> _selectedValueNotifier = ValueNotifier<String?>(null);

  @override
  void dispose() {
    _selectedValueNotifier.dispose(); // Dispose the ValueNotifier when no longer needed
    super.dispose();
  }

  // Mengontrol input teks pada form tambah data cerita (genre, judul, sinopsis, cover_book).
  final TextEditingController _judulController = TextEditingController();
  final TextEditingController _sinopsisController = TextEditingController();
  // isLoading: Boolean untuk menampilkan indikator loading saat registrasi.
  bool _isLoading = false;

  // variabel untuk menyimpan file gambar yang dipilih oleh pengguna
  Uint8List? _coverBytes;

  // Fungsi _pickImage digunakan untuk mengambil gambar dari galeri.
  void _pickImage() {
  html.FileUploadInputElement uploadInput = html.FileUploadInputElement();
  uploadInput.accept = 'image/*';
  uploadInput.click();

  uploadInput.onChange.listen((event) {
    final files = uploadInput.files;
    if (files!.isNotEmpty) {
      final file = files[0];
      final reader = html.FileReader();
      
      reader.readAsArrayBuffer(file);
      reader.onLoadEnd.listen((event) {
        setState(() {
          _coverBytes = reader.result as Uint8List;
        });
      });
    }
  });
  }

  // masuk Ke Fungsi Register
  void _kirimData() async {
    // setState(): Digunakan untuk memperbarui state widget, seperti mengganti nilai
    setState(() {
      _isLoading = true;
    });

    // try-catch-finally:
    // * Jika Registerasi berhasil, hasilnya diproses (contoh: ditampilkan dengan print()).
    try {
      // ApiService().register(): Memanggil fungsi register dari api_service.dart.
      final apiService = ApiService(); //dari class di halaman api_service
      final result = await apiService.addCerita(
        _selectedValueNotifier.value ?? 'Belum di pilih', 
        _judulController.text, 
        _sinopsisController.text, 
        _coverBytes,
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
          'Buat Cerita',
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
                    margin: EdgeInsets.only(top: 15, bottom: 18),
                    child: GestureDetector(
                      onTap: _pickImage,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: _coverBytes == null
                              ? Icon(Icons.add_a_photo, size: 50)
                              : Image.memory(_coverBytes!, fit: BoxFit.cover),
                          ),
                          Text(
                            'Upload Cover Book',
                          )
                        ],
                      )
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
                        'Judul Cerita',
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
                          controller: _judulController,
                          maxLines: null,
                          style: TextStyle(
                            fontWeight: FontWeight.w900
                          ),
                          decoration: InputDecoration(
                            hintText: 'Tambahkan Judul Cerita',
                            contentPadding: EdgeInsets.only(top: 12, left: 20, bottom: 12),
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.post_add_outlined
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
                        'Genre',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16
                        ),
                      ),
                      ),
                      Container(
                        width: screenWidht,
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.09)
                        ),
                        child: DropdownWidget(selectedValueNotifier: _selectedValueNotifier),
                      ),
                      ValueListenableBuilder<String?>(
                        valueListenable: _selectedValueNotifier,
                        builder: (context, selectedValue, child) {
                          return Text('Opsi yang dipilih: $selectedValue');
                        },
                      ),
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
                        'Sinopsis',
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
                          controller: _sinopsisController,
                          maxLines: null,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black
                          ),
                          decoration: InputDecoration(
                            hintText: 'Tambahkan Sinopsis',
                            contentPadding: EdgeInsets.only(top: 15, left: 20, bottom: 15),
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.post_add_outlined
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
                          onTap: _kirimData,
                          child: Container(
                            width: screenWidht,
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withOpacity(0.09)
                            ),
                            child: Text(
                              // Jika _isLoading == true, menampilkan Prosess...
                              _isLoading ? 'Prosess..':'Tambahkan Cerita',
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