import 'package:flutter/material.dart';
import 'package:kucing/pages/ImagePage.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:kucing/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.purple.shade600,
      ),
      backgroundColor: Colors.orangeAccent.shade700,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StrokeText(
              text: 'MATERI',
              textStyle: TextStyle(
                fontFamily: 'Bold Condensed',
                fontSize: 65,
                color: AppConstants.textColor,
              ),
              strokeColor: Colors.black,
              strokeWidth: 2,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            _buildButton(context, 'Ekspresi', 'Ekspresi'),
            SizedBox(height: 20),
            _buildButton(context, 'Petunjuk', 'Petunjuk'),
            SizedBox(height: 20),
            _buildButton(context, 'Makanan & Minuman', 'Makanan & Minuman'),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title, String category) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ImageSelectionPage(category: category),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple.shade400,
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
