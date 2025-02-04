// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../logic/DataProvider.dart';
import 'DetailPage.dart';

class ImageSelectionPage extends StatefulWidget {
  final String category;

  const ImageSelectionPage({required this.category, super.key});

  @override
  _ImageSelectionPageState createState() => _ImageSelectionPageState();
}

class _ImageSelectionPageState extends State<ImageSelectionPage> {
  late final List<Map<String, String>> _data;

  @override
  void initState() {
    super.initState();
    _data = _loadDataByCategory();
  }

  List<Map<String, String>> _loadDataByCategory() {
    switch (widget.category) {
      case 'Ekspresi':
        return CatDataProvider.getCatData();
      case 'Do':
        return DoProvider.getDoData();
      case 'Dont':
        return DontProvider.getDontData();
      case 'Makanan':
        return FoodProvider.getFoodData();
      case 'Minuman':
        return WaterProvider.getWaterData();
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori: ${widget.category}'),
        backgroundColor: Colors.purple.shade600,
      ),
      backgroundColor: Colors.orangeAccent.shade700,
      body: _data.isEmpty
          ? const Center(
              child: Text(
                'Tidak ada data untuk kategori ini.',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75, // Menyesuaikan aspek tampilan gambar
                ),
                itemCount: _data.length,
                itemBuilder: (context, index) {
                  final item = _data[index];
                  return _ImageCard(
                    image: item['image']!,
                    name: item['name']!,
                    description: item['description']!,
                  );
                },
              ),
            ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  final String image;
  final String name;
  final String description;

  const _ImageCard({
    required this.image,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              image: image,
              name: name,
              description: description,
            ),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.purple.shade800,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
