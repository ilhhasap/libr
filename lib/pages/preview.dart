import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libr/interface.dart';

// Page
import 'package:libr/pages/detail.dart';
import 'package:libr/pages/home.dart';

class PreviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            // Stak Konten tombol kembali, judul page, titik 3
            Container(
              margin: EdgeInsets.only(top: 66, right: 20),
              child: Column(
                children: [
                  // Panah Kembali
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // margin: EdgeInsets.only(top: 40),
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
                              color: Color(0xff171717),
                            ),
                          ),
                        ),
                      ),
                      // Judul Page
                      Column(
                        children: [
                          Container(
                            child: Text(
                              "Introduction",
                              style: GoogleFonts.inter(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            child: Text(
                              "4 min",
                              style: GoogleFonts.inter(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                      // titik 3 kanan atas
                      Container(
                        height: 32,
                        width: 32,
                        child: Image.asset("assets/images/icons/section.png"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // stak Konten Paragraf Tulisan
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 126),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "79 percent of smartphone owners check their device within 15 minutes of waking up every morning. [i] Perhaps more startling, fully one-third of Americans say they would rather give up sex than lose their cell phones. [ii] A 2011 university study suggested people check their phones 34 times per day. [iii] However, industry insiders believe that number is closer to an astounding 150 daily sessions",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff666666)),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      child: Text(
                        "For many products, forming habits is an imperative for survival. As infinite distractions compete for our attention, companies are learning to master novel tactics to stay relevant in users’ minds. Today, amassing millions of users is no longer good enough. Companies increasingly find that their economic value is a function of the strength of the habits they create. In order to win the loyalty of their users and create a product that’s regularly used, companies must learn not only what compels users to click, but also what makes them tick.",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff666666)),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      child: Text(
                        "79 percent of smartphone owners check their device within 15 minutes of waking up every morning. [i] Perhaps more startling, fully one-third of Americans say they would rather give up sex than lose their cell phones. [ii] A 2011 university study suggested people check their phones 34 times per day. [iii] However, industry insiders believe that number is closer to an astounding 150 daily sessions",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff666666)),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      child: Text(
                        "For many products, forming habits is an imperative for survival. As infinite distractions compete for our attention, companies are learning to master novel tactics to stay relevant in users’ minds. Today, amassing millions of users is no longer good enough. Companies increasingly find that their economic value is a function of the strength of the habits they create. In order to win the loyalty of their users and create a product that’s regularly used, companies must learn not only what compels users to click, but also what makes them tick.",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff666666)),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      child: Text(
                        "79 percent of smartphone owners check their device within 15 minutes of waking up every morning. [i] Perhaps more startling, fully one-third of Americans say they would rather give up sex than lose their cell phones. [ii] A 2011 university study suggested people check their phones 34 times per day. [iii] However, industry insiders believe that number is closer to an astounding 150 daily sessions",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff666666)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // stak konten tombol read next
            Container(
              margin: EdgeInsets.only(left: 56, top: 682),
              width: 263,
              height: 56,
              child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: const Color(0xffE85E46)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PreviewPage()),
                  );
                },
                child: Text(
                  "Next read",
                  style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF)),
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
