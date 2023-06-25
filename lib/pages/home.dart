import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Components
import 'package:libr/components/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  Kolom Profile & Banner
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 64, left: 20, right: 20),
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
                        HorizontalCard(
                          imagePath: 'assets/images/books/book1.png',
                          title: 'Factfulness',
                          author: 'Hans Roling',
                          category: ' ',
                        ),
                        HorizontalCard(
                          imagePath: 'assets/images/books/book2.png',
                          title: 'Hooked',
                          author: 'Nir Eyal',
                          category: ' ',
                        ),
                        HorizontalCard(
                          imagePath: 'assets/images/books/book1.png',
                          title: 'Hooked',
                          author: 'Nir Eyal',
                          category: ' ',
                        ),
                        HorizontalCard(
                          imagePath: 'assets/images/books/book2.png',
                          title: 'Hooked',
                          author: 'Nir Eyal',
                          category: ' ',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
                    VerticalCard(
                      imagePath: 'assets/images/books/book2.png',
                      title: 'Hooked',
                      author: 'Nir Eyal',
                      category: 'Psychology',
                    ),
                    VerticalCard(
                      imagePath: 'assets/images/books/book1.png',
                      title: 'Factfulness',
                      author: 'Hans Rosling',
                      category: 'Self Improvement',
                    ),
                    VerticalCard(
                      imagePath: 'assets/images/books/book2.png',
                      title: 'Hooked',
                      author: 'Nir Eyal',
                      category: 'Psychology',
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
