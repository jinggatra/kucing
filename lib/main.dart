import 'package:flutter/material.dart';
import 'package:kucing/utils/routes.dart';

void main() {
  runApp(const MyApp());
  debugProfileBuildsEnabled = true;

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edukasi Kucing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.splashScreen,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
