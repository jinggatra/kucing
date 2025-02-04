// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../pages/HomeScreen.dart';
import '../pages/MenuPageDoDont.dart';
import '../pages/MenuPageFnB.dart';

class NavigationLogic {
  static void goToMenuPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  static void goToMenuPageDoDont(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const DoDontPage()),
    );
  }

    static void goToMenuPageFnB(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FnBPage()),
    );
  }

  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}
