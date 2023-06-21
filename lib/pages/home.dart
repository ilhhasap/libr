import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

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
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Most Popular Books🔥',
                      style: GoogleFonts.inter(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 10, right: 24),
                          width: 335,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1, color: Color(0xffEBEBEB))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                // mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.asset('assets/images/books/book1.png'),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Hooked',
                                            style: GoogleFonts.inter(
                                                fontSize: 16,
                                                color: Color(0xff171717),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Nir Eyal',
                                            style: GoogleFonts.inter(
                                                fontSize: 12,
                                                color: Color(0xff171717),
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        padding: EdgeInsets.only(
                                            top: 4,
                                            bottom: 4,
                                            left: 8,
                                            right: 8),
                                        decoration: BoxDecoration(
                                            color: Color(0xffE9F4F1)),
                                        child: Text(
                                          'Psychology',
                                          style: GoogleFonts.inter(
                                              color: Color(0xff258E76)),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Image.asset(
                                'assets/images/icons/arrowRight.png',
                                width: 32,
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
            // margin: EdgeInsets.all(40),
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: BottomAppBar(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset(
                          'assets/images/icons/home.png'), // Asset image path
                      onPressed: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                          'assets/images/icons/book.png'), // Asset image path
                      onPressed: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                    ),
                    IconButton(
                      icon: Image.asset(
                          'assets/images/icons/profile.png'), // Asset image path
                      onPressed: () {
                        setState(() {
                          _currentIndex = 2;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ))
    );
  }
}
