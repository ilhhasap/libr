import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          // Kolom Utama
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  Kolom Profile & Banner
              Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 64, left:  20, right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/avatar.png',
                            width: 40,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Hey, Marta!',
                            style: GoogleFonts.inter(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Image.asset(
                      'assets/images/banner.png',
                      width: 335,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'To Read',
                            style: GoogleFonts.inter(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              
                              // Awal Books
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                width: 120,
                                height: 222,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'assets/images/books/book1.png',
                                        width: 120,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Factfulness',
                                          style: GoogleFonts.inter(
                                            color: Color(0xff171717),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Text(
                                          'Hans Rosling',
                                          style: GoogleFonts.inter(
                                            color: Color(0xff666666),
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                        
                              Container(
                                width: 120,
                                height: 222,
                                margin: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'assets/images/books/book2.png',
                                        width: 120,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hooked',
                                          style: GoogleFonts.inter(
                                            color: Color(0xff171717),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Text(
                                          'Nir Eyal',
                                          style: GoogleFonts.inter(
                                            color: Color(0xff666666),
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
              
                              Container(
                                width: 120,
                                height: 222,
                                margin: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Image.asset(
                                        'assets/images/books/book1.png',
                                        width: 120,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Factfulness',
                                          style: GoogleFonts.inter(
                                            color: Color(0xff171717),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Text(
                                          'Hans Rosling',
                                          style: GoogleFonts.inter(
                                            color: Color(0xff666666),
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              // Akhir Books
                        
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
            ],
          ),
        ),
    );
  }
}
