import 'package:flutter/material.dart';
import 'package:kucing/pages/ImagePage.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:kucing/utils/constants.dart';

class MenuPage extends StatelessWidget {
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
             _buildButton(context, 'Ekspresi', 'Ekspresi'),
            SizedBox(height: 20),
            _buildButton(context, 'Do & Dont', 'DoDontMenu'),
            SizedBox(height: 20),
            _buildButton(context, 'Makanan & Minuman', 'FoodDrinkMenu'),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String title, String category) {
    return ElevatedButton(
      onPressed: () {
        if (title == 'Do') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MenuPage(category: category)));
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ImageSelectionPage(category: category),
            ),
          );
        }
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
