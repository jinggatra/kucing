import 'package:flutter/material.dart';
import 'package:kucing/pages/ImagePage.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:kucing/utils/constants.dart';
import 'package:kucing/widgets/CustomButton.dart';
import 'package:kucing/logic/Navigation.dart';

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
            CustomButton(
              label: 'Do & Dont',
              onPressed: () {
                NavigationLogic.goToMenuPageDoDont(context);
              },
            ),
            SizedBox(height: 20),
            CustomButton(
              label: 'Makanan & Minuman',
              onPressed: () {
                NavigationLogic.goToMenuPageFnB(context);
              },
            ),
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
