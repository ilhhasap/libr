// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Pages
import 'package:libr/pages/onboarding_2.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({Key? key}) : super(key: key);
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
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Image.asset('assets/images/onboard_1.png'),
          ),
          // Konten Text
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(30, 64, 30, 0),
            child: Text(
              'Welcome,',
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
              'It’s Pocket Library!',
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
              'Carry your entire library in your pocket with this',
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
                  MaterialPageRoute(builder: (context) => const SecondOnboarding()),
                );
              },
              child: Text(
                "Next",
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
