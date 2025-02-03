import 'package:flutter/material.dart';
import 'package:kucing/pages/ImagePage.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:kucing/utils/constants.dart';

class DoDontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Page'),
        backgroundColor: Colors.purple.shade600,
      ),
      backgroundColor: Colors.orangeAccent.shade700,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            _buildButton(context, 'Do', 'Do'),
            SizedBox(height: 20),
            _buildButton(context, 'Dont', 'Dont'),
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
        backgroundColor: AppConstants.secondaryColor,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: AppConstants.buttonFontSize,
          color: AppConstants.primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
