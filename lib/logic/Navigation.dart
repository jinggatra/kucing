import 'package:flutter/material.dart';
import '../pages/HomeScreen.dart';
// import '../pages/ImagePage.dart';

class NavigationLogic {
  static void goToMenuPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  // static void goToImageGridPage(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => ImageSelectionPage(category: category)),
  //   );
  // }

  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}
