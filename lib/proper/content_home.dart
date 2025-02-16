import 'package:faza_citra/detail.dart';
import 'package:flutter/material.dart';

class myBooks extends StatelessWidget {
  const myBooks(
    {
      super.key,
      required this.content,
      required this.gambar,
      required this.judul,
      required this.penulis
    });

  final String content; //content sesuai book id
  final String gambar;
  final String judul;
  final String penulis;
  @override
  Widget build(BuildContext context) {
    return Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return detailPage();
                                }
                              ),
                              );
                            },
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                this.gambar,
                                //'assets/wavesB.png',
                                scale: 0.8,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        this.judul,
                                        // 'Waves',
                                        style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        this.penulis,
                                        // 'Ingrid Chardbert',
                                        style: TextStyle(
                                          color: Colors.black38
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          )
                        );
  }
}