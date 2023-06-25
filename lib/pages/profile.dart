import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libr/components/card.dart';

// Page
import 'package:libr/pages/detail.dart';
import 'package:libr/pages/home.dart';

class ProfilePage extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<ProfilePage> {
  bool s1 = false, s2 = true, s3 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            // Konten Background hitam
            Container(
              color: Color(0xff171717),
              width: double.infinity,
              height: 240,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Konten Gambvar
                        Container(
                          width: 100,
                          height: 100,
                          child: Image.asset("assets/images/avatar.png"),
                        ),
                        SizedBox(height: 16),
                        // Konten Nama User
                        Container(
                          child: Text(
                            "Marta Subianto",
                            style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 4),
                        // Konten BookHolic
                        Container(
                          child: Text(
                            "Book Holic",
                            style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0xffB4B4B4)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Bagian Putih
            Container(
              margin: EdgeInsets.only(top: 264, left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        // Continue reading
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Continue reading",
                            style: GoogleFonts.inter(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        // Konten Buku Continue reading
                        VerticalCard(
                          imagePath: 'assets/images/books/book1.png',
                          title: 'Factfulness',
                          author: 'Hans Rosling',
                          category: 'Psychology',
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        // Konten Dark Mode, Favorite book, Setting, logout
                        Column(
                          children: [
                            // Dark Mode
                            Container(
                              width: 335,
                              decoration: BoxDecoration(
                                color: Color(0xfff9f9f9),
                                border: Border.all(
                                  color: Color(0xfff9f9f9),
                                  width: 1,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 16, top: 8, bottom: 8),
                                    decoration: BoxDecoration(
                                        color: Color(0xffF1F1F1),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Row(
                                      children: [
                                        // Vektor Bulan
                                        Container(
                                          width: 24,
                                          height: 24,
                                          child: Image.asset(
                                              "assets/images/icons/dark.png"),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        // Dark Mode
                                        Container(
                                          child: Text(
                                            "Dark Mode",
                                            style: GoogleFonts.inter(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        // Button ON/Off
                                        Container(
                                          margin: EdgeInsets.only(left: 134),
                                          child: Column(
                                            children: [
                                              Switch(
                                                value: s1,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    s1 = value;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            // Favorite Books
                            Container(
                              width: 335,
                              decoration: BoxDecoration(
                                color: Color(0xfff9f9f9),
                                border: Border.all(
                                  color: Color(0xfff9f9f9),
                                  width: 1,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF1F1F1),
                                        borderRadius: BorderRadius.circular(8)),
                                    padding: EdgeInsets.only(
                                        left: 16, top: 16, bottom: 16),
                                    child: Row(
                                      children: [
                                        // Vektor love
                                        Container(
                                          width: 24,
                                          height: 24,
                                          child: Image.asset(
                                              "assets/images/icons/love.png"),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        // Favorite Books
                                        Container(
                                          child: Text(
                                            "Favorite Books",
                                            style: GoogleFonts.inter(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            // Settings
                            Container(
                              width: 335,
                              height: 56,
                              decoration: BoxDecoration(
                                color: Color(0xfff1f1f1),
                                border: Border.all(
                                  color: Color(0xfff9f9f9),
                                  width: 1,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 16),
                                    child: Row(
                                      children: [
                                        // Vektor Settings
                                        Container(
                                          width: 24,
                                          height: 24,
                                          child: Image.asset(
                                              "assets/images/icons/settings.png"),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        // Settings
                                        Container(
                                          child: Text(
                                            "Settings",
                                            style: GoogleFonts.inter(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            // Loguout
                            Container(
                              width: 335,
                              height: 56,
                              decoration: BoxDecoration(
                                color: Color(0xfff9f9f9),
                                border: Border.all(
                                  color: Color(0xfff9f9f9),
                                  width: 1,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        // Setting
                                        Container(
                                          child: Text(
                                            "Logout",
                                            style: GoogleFonts.inter(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffE85E46)),
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
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
