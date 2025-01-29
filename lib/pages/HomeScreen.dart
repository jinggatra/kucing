import 'package:flutter/material.dart';
import 'package:kucing/pages/ImagePage.dart';

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
            _buildButton(context, 'Ekspresi', 'Ekspresi'),
            SizedBox(height: 20),
            _buildButton(context, 'Do & Dont', 'Do & Dont'),
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
