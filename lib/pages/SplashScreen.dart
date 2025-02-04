// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:kucing/utils/constants.dart';
import 'package:kucing/logic/Navigation.dart';
import 'package:kucing/widgets/CustomButton.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Nama Aplikasi atau Logo Utama
            const StrokeText(
              text: 'Edukasi Kucing Liar RW 12 Cisalak',
              textStyle: TextStyle(
                fontFamily: 'Bold Condensed',
                fontSize: AppConstants.titleFontSize,
                color: AppConstants.textColor,
              ),
              strokeColor: Colors.black,
              strokeWidth: 2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Baris untuk Gambar Logo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(width: 20), // Jarak antar logo
                Image.asset(
                  'assets/images/logo2.png',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Tombol Mulai
            CustomButton(
              label: 'Mulai',
              onPressed: () {
                NavigationLogic.goToMenuPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
