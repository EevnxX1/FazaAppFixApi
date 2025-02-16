import 'package:faza_citra/write2.dart';
import 'package:flutter/material.dart';

class ViewBooks extends StatelessWidget {
  const ViewBooks(
    {
      super.key,
      required this.imageCover,
      required this.nameBooks,
      required this.linkCreate,
    }
  );

  final imageCover;
  final nameBooks;
  final linkCreate;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: InkWell(
                onTap: () {
                  this.linkCreate();
                },
                child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.09)
                ),
                child: Row(
                  children: [
                    Image.asset(
                      this.imageCover,
                      // 'assets/tsbB.png'
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            child: Text(
                              'Lanjutkan menulis',
                              style: TextStyle(
                                fontSize: 14
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            width: 230,
                            child: Text(
                              this.nameBooks,
                              // "The Sky Blues : Touch Her is Possible",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 15
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(1),
                            color: Colors.black.withOpacity(0.1),
                            margin: EdgeInsets.only(bottom: 4),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  size: 20,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 3),
                                  child: Text(
                                    '5 bagian dipublikasi'
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              '25 Draft'
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ),
    );
  }
}