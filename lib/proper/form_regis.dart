import 'package:flutter/material.dart';

class FormRegis extends StatelessWidget {
  const FormRegis(
    {
      super.key,
      required this.margin,
      required this.kontrol,
      required this.label,
      required this.hint,
    }
  );

  final dynamic margin;
  final dynamic kontrol;
  final String label;
  final String hint;

  @override
  Widget build(BuildContext context) {
    final screenWidht = MediaQuery.of(context).size.width; //dari layar
    final screenHeight = MediaQuery.of(context).size.height; //dari layar
    return Container(
                    // margin: EdgeInsets.only(top: 15, bottom: 18),
                    margin: this.margin,
                    width: screenWidht * 0.8,
                    child: TextField(
                      // controller: Menghubungkan input dengan _usernameController
                      // controller: _usernameController,
                      controller: this.kontrol,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 18),
                        labelText: this.label,
                        hintText: this.hint,
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
                  );
  }
}