import 'package:flutter/material.dart';
import 'dart:async';

// Pages
import 'package:libr/pages/onboarding_1.dart';
import 'package:libr/pages/onboarding_2.dart';
import 'package:libr/pages/home.dart';
import 'package:libr/pages/detail.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Navigasi ke halaman utama setelah delay 2 detik
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F4F0),
      body: Center(
        child: Image.asset(
          'assets/logo.png', // Ganti dengan path gambar Asset Image Anda
          width: 100,
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FirstOnboarding();
  }
}
