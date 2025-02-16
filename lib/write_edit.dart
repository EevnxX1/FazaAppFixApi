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
import 'package:http/http.dart' as http;

class WriteEdit extends StatefulWidget {
  final int id_buku;
  final int id_user;
  final String genre;
  final String judul_buku;
  final String sinopsis;
  final String cover_book;

  const WriteEdit({
    super.key,
    required this.id_buku,
    required this.id_user,
    required this.genre,
    required this.judul_buku,
    required this.sinopsis,
    required this.cover_book,
  });

  @override
  State<WriteEdit> createState() => _WriteEditState();
}

class _WriteEditState extends State<WriteEdit> {
  // menyiapkan variabel
  late TextEditingController _judulController;
  late TextEditingController _sinopsisController;
  late ValueNotifier<String?> _selectedValueNotifier;
  Uint8List? _coverBytes;
  bool _isLoading = false;


  @override
  // Pada saat mulai menampilkan halaman, hal pertama yang dilakukan adalah memasukkan value input dari database.
  void initState() {
    super.initState();
    _judulController = TextEditingController(text: widget.judul_buku);
    _sinopsisController = TextEditingController(text: widget.sinopsis);
    _selectedValueNotifier = ValueNotifier<String?>(widget.genre);
    fetchImage();
    print(widget.cover_book);
    print(_coverBytes);
  }

  // fungsi untuk menetapkan gambar yang lama atau tidak ganti gambar
  Future<void> fetchImage() async {
    String imageUrl = widget.cover_book;
    try { 
      final response = await http.get(Uri.parse(imageUrl));
      if (response.statusCode == 200) {
        setState(() {
          _coverBytes = response.bodyBytes;
        });
      } else {
        print("Gagal mengambil gambar: ${response.statusCode}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  // pada saat mulai meninggalkan widget, fungsi ini akan aktif dan menghapus isi input
  void dispose() {
    _judulController.dispose();
    _sinopsisController.dispose();
    _selectedValueNotifier.dispose();
    super.dispose();
  }

  // Fungsi _pickImage digunakan untuk mengambil gambar dari galeri.
  void _pickImage() {
  html.FileUploadInputElement uploadInput = html.FileUploadInputElement();
  uploadInput.accept = 'image/*';
  uploadInput.click();

  // Menampilkan gambar pada saat selesai memilih gambar
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

  // masuk ke fungsi update data
  void _updateData() async {
    setState(() {
      _isLoading = true;
    });

    print(_coverBytes);
    print(_selectedValueNotifier.value);
    print(_judulController.text);
    print(_sinopsisController.text);

    // jika true maka dia akan mengupdate data dan mengoper halaman ke write1Page
    try {
      final apiService = ApiService();
      final result = await apiService.updateCerita(
        widget.id_buku,
        _selectedValueNotifier.value ?? widget.genre,
        _judulController.text,
        _sinopsisController.text,
        _coverBytes,
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => write1Page()),
      );

      print(result);

    // jika false maka dia akan mengeluarkan pesan false
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
        ),
      );
      print(e);
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
          'Edit Cerita',
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
                  // input image
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
                            // jika _coverBytes ada isinya(tidak null), maka munculkan gambar yang user input.
                            child: _coverBytes == null
                              ? Image.network('${widget.cover_book}', fit: BoxFit.cover,) //true
                              : Image.memory(_coverBytes!, fit: BoxFit.cover), //false
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
                      // ValueListenableBuilder digunakan untuk mendengarkan perubahan nilai dropdown.
                      // Jika pengguna memilih opsi baru, teks akan diperbarui secara otomatis.
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
                          onTap: _updateData,
                          child: Container(
                            width: screenWidht,
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withOpacity(0.09)
                            ),
                            child: Text(
                              // Jika _isLoading == true, menampilkan Prosess...
                              _isLoading ? 'Prosess..':'Ubah Cerita',
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