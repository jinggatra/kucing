import 'package:flutter/material.dart';
import 'package:kucing/pages/HomeScreen.dart';
import 'package:kucing/pages/SplashScreen.dart';
// import 'package:your_app/pages/image_selection_page.dart';
// import 'package:kucing/pages/detail_page.dart';

class AppRoutes {
  // Definisi nama rute
  static const String splashScreen = '/';
  static const String menuPage = '/menu';
  static const String imageSelectionPage = '/image-selection';
  static const String detailPage = '/detail';

  // Metode untuk menghasilkan rute
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case menuPage:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      // case imageSelectionPage:
      //   return MaterialPageRoute(builder: (_) => ImageSelectionPage());
      // case detailPage:
      //   return MaterialPageRoute(builder: (_) => DetailPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
