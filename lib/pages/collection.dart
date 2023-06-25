import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Components
import 'package:libr/components/card.dart';

class Collection extends StatefulWidget {
  const Collection({super.key});

  @override
  State<Collection> createState() => _HomeState();
}

class _HomeState extends State<Collection> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // Kolom Utama
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  Kolom Profile & Banner
              // MainAxisAlignment,
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(left: 16, right: 16),
                width: 335,
                height: 56,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffD1D1D6),
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/icons/search.png',
                          width: 16,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text('Search books..'),
                      ],
                    ),
                    Image.asset(
                      'assets/images/icons/close.png',
                      width: 32,
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 16),
                  child: Row(
                    children: [
                      Container(
                        // width: double.infinity,
                        padding: EdgeInsets.only(
                            left: 12, right: 12, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: Color(0xffE8E8E8), width: 1),
                            color: Color(0xffF6F6F6)),
                        child: Text(
                          'Business',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        // width: double.infinity,
                        padding: EdgeInsets.only(
                            left: 12, right: 12, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xff171717)),
                        child: Text(
                          'History',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        // width: double.infinity,
                        padding: EdgeInsets.only(
                            left: 12, right: 12, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: Color(0xffE8E8E8), width: 1),
                            color: Color(0xffF6F6F6)),
                        child: Text(
                          'Psychology',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        // width: double.infinity,
                        padding: EdgeInsets.only(
                            left: 12, right: 12, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: Color(0xffE8E8E8), width: 1),
                            color: Color(0xffF6F6F6)),
                        child: Text(
                          'Self Improvement',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  HorizontalWithSaveCard(
                    imagePath: 'assets/images/books/book1.png',
                    title: 'Factfulness',
                    author: 'Hans Roling',
                    category: ' ',
                  ),
                  HorizontalWithSaveCard(
                    imagePath: 'assets/images/books/book2.png',
                    title: 'Factfulness',
                    author: 'Hans Roling',
                    category: ' ',
                  ),
                  HorizontalWithSaveCard(
                    imagePath: 'assets/images/books/book1.png',
                    title: 'Factfulness',
                    author: 'Hans Roling',
                    category: ' ',
                  ),
                  HorizontalWithSaveCard(
                    imagePath: 'assets/images/books/book2.png',
                    title: 'Factfulness',
                    author: 'Hans Roling',
                    category: ' ',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
