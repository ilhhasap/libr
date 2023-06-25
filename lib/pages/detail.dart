import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libr/interface.dart';

// Page
import 'package:libr/pages/detail.dart';
import 'package:libr/pages/preview.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String author;
  final String imagePath;
  final String category;

  const DetailPage({
    required this.title,
    required this.author,
    required this.imagePath,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            // Stak Bawah (Warna Hitam dan panah)
            Container(
              color: Color(0xff171717),
              width: double.infinity,
              height: 267,
              child: Column(
                children: [
                  Container(
                      child: Row(
                    children: [
                      // Panah Kembali
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Interface()),
                            );
                          },
                          child: const Text(
                            "←",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                      // TEXT DETAIL BOOK
                      Container(
                        margin: EdgeInsets.only(top: 40, left: 79),
                        child: Text(
                          "Detail Book",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40, left: 93),
                        child: const Text(
                          "•••",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            // Stak Tengah (BUKU)
            Container(
              margin: const EdgeInsets.only(top: 131, left: 0),
              child: Column(
                children: <Widget>[
                  // Konten Buku
                  Container(
                    width: 138,
                    height: 207,
                    child: Image.asset(imagePath),
                  ),
                  SizedBox(height: 16),
                  // Konten NamaBuku
                  Container(
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 4),
                  // Konten PengarangBuku
                  Container(
                    child: Text(
                      author,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff666666)),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Konten Language, Capters, ReadTime
                  Container(
                    width: double.infinity,
                    height: 68,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Color(0xfff9f9f9),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  "Language",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff666666)),
                                ),
                              ),
                              SizedBox(height: 4),
                              Container(
                                child: Text(
                                  "English",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16, left: 60, right: 60),
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  "Capters",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff666666)),
                                ),
                              ),
                              SizedBox(height: 4),
                              Container(
                                child: Text("23",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  "Read Time",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff666666)),
                                ),
                              ),
                              SizedBox(height: 4),
                              Container(
                                child: Text(
                                  "45m",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Stak Atas
            Container(
              width: 335,
              margin: EdgeInsets.only(top: 520, left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  // What's the content?
                  Container(
                    margin: EdgeInsets.only(right: 175),
                    child: Text(
                      "What's the content?",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // Introduction
                  Container(
                    width: double.infinity,
                    height: 64,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffd1d1d6),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(top: 10, left: 12, bottom: 10),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                child: Image.asset(
                                    'assets/images/icons/number_1.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Introduction",
                                        style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                      // margin: EdgeInsets.only(right: 10),
                                      child: Text(
                                        "4 min read",
                                        style: GoogleFonts.inter(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff888484)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.only(left: 140),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Interface()),
                                    );
                                  },
                                  child: Image.asset(
                                      'assets/images/icons/arrowRight.png'),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // Introduction
                  Container(
                    width: double.infinity,
                    height: 64,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffd1d1d6),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(top: 10, left: 12, bottom: 10),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                child: Image.asset(
                                    'assets/images/icons/number_2.png'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "The Habit Zone",
                                        style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Container(
                                      // margin: EdgeInsets.only(right: 10),
                                      child: Text(
                                        "28 min read",
                                        style: GoogleFonts.inter(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff888484)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.only(left: 120),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Interface()),
                                    );
                                  },
                                  child: Image.asset(
                                      'assets/images/icons/arrowRight.png'),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Stak Button Bawah
            Container(
              margin: EdgeInsets.only(top: 700, left: 20),
              // height: 714,
              // width: 20,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffdddddd),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          child: Image.asset("assets/images/icons/love.png"),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 263,
                          height: 56,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                backgroundColor: Colors.black),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PreviewPage()),
                              );
                            },
                            child: Text(
                              "Start reading",
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFFFFFF)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
