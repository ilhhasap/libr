import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Pages
import 'package:libr/pages/home.dart';
import 'package:libr/pages/collection.dart';
import 'package:libr/pages/profile.dart';

class Interface extends StatefulWidget {
  const Interface({super.key});

  @override
  State<Interface> createState() => _HomeState();
}

class _HomeState extends State<Interface> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Konten dari menu yang dipilih
      body: _buildPageContent(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Collection',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffE85E46),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget _buildPageContent(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return HomePage();
      case 1:
        return Collection();
      case 2:
        return ProfilePage();
      default:
        return Container();
    }
  }
}
