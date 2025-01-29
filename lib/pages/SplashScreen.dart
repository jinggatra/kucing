import 'package:flutter/material.dart';
import 'package:kucing/utils/constants.dart';
import 'package:kucing/logic/Navigation.dart';
import 'package:kucing/widgets/CustomButton.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/images/bg2.jpg'), // Ganti dengan aset Anda
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Nama Aplikasi atau Logo Utama
            Text(
              'Edukasi Oyen RW 12 Cisalak',
              style: TextStyle(
                fontSize: AppConstants.titleFontSize,
                color: AppConstants.textColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // Baris untuk Gambar Logo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png', // Ganti dengan aset Anda
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 20), // Jarak antar logo
                Image.asset(
                  'assets/images/logo2.png', // Ganti dengan aset Anda
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            SizedBox(height: 30),
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
