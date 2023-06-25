// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libr/interface.dart';

// Pages
import 'package:libr/pages/splash_screen.dart';
import 'package:libr/pages/onboarding_2.dart';
import 'package:libr/pages/home.dart';

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidget();
}

class _MyStatefulWidget extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          // Konten Gambar
          Container(
            // Urutan Margin (Kiri, Atas, Kanan, Bawah)
            margin: const EdgeInsets.fromLTRB(0, 110, 0, 0),
            child: Image.asset('assets/images/onboard_2.png'),
          ),
          // Konten Text
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(30, 32, 30, 0),
            child: Text(
              'Read Anytime,',
              textAlign: TextAlign.left,
              style: GoogleFonts.inter(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xff171717)
                ),
            ),
          ),
          // Konten Text
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Text(
              'Read Anywhere!',
              style: GoogleFonts.inter(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xff171717)
                ),
            ),
          ),
          // Konten Text
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            child: Text(
              'Discover the joy of reading on your terms, at your own pace',
              textAlign: TextAlign.left,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color(0xff666666)
                ),
            ),
          ),
          // Button
          Container(
            margin: const EdgeInsets.fromLTRB(30, 40, 30, 0),
            width: double.infinity,
            height: 56,
            child: TextButton(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  backgroundColor: const Color(0xff000000)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Interface()),
                );
              },
              child: Text(
                "Let's Go!",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFFFFFF)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
