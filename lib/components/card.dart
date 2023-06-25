import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:libr/pages/detail.dart';

class VerticalCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final String category;

  VerticalCard({
    required this.imagePath,
    required this.title,
    required this.author,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              imagePath: imagePath,
              title: title,
              author: author,
              category: category,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 24),
        width: 335,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Color(0xffEBEBEB))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(imagePath),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              color: Color(0xff171717),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          author,
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              color: Color(0xff171717),
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding:
                          EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
                      decoration: BoxDecoration(color: Color(0xffE9F4F1)),
                      child: Text(
                        category,
                        style: GoogleFonts.inter(color: Color(0xff258E76)),
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
    );
  }
}

class HorizontalCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final String category;

  HorizontalCard(
      {required this.imagePath,
      required this.title,
      required this.author,
      required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              imagePath: imagePath,
              title: title,
              author: author,
              category: category,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 20),
        width: 120,
        height: 222,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(
                imagePath,
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
                  title,
                  style: GoogleFonts.inter(
                      color: Color(0xff171717),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  author,
                  style: GoogleFonts.inter(
                      color: Color(0xff666666),
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalWithSaveCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String author;
  final String category;

  HorizontalWithSaveCard({
    required this.imagePath,
    required this.title,
    required this.author,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              imagePath: imagePath,
              title: title,
              author: author,
              category: category,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 24),
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 16),
        width: 335,
        height: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(imagePath),
                SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              color: Color(0xff171717),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          author,
                          style: GoogleFonts.inter(
                              fontSize: 12,
                              color: Color(0xff171717),
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding:
                          EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
                      decoration: BoxDecoration(color: Color(0xffE9F4F1)),
                      child: Text(
                        'Psychology',
                        style: GoogleFonts.inter(color: Color(0xff258E76)),
                      ),
                    )
                  ],
                )
              ],
            ),
            Image.asset(
              'assets/images/icons/bookmarks.png',
              width: 32,
            )
          ],
        ),
      ),
    );
  }
}
