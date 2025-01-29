import 'package:flutter/material.dart';
// import 'Navigation.dart';

class MenuLogic {
  static void handleMenuSelection(BuildContext context, String menu) {
    switch (menu) {
      case 'Gambar Kucing':
        // NavigationLogic.goToImageGridPage(context);
        break;
      case 'Info Kucing':
        // Tambahkan navigasi ke halaman Info Kucing
        break;
      case 'Game Kucing':
        // Tambahkan navigasi ke halaman Game Kucing
        break;
      default:
        break;
    }
  }
}
