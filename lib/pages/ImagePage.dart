import 'package:flutter/material.dart';
import '../logic/DataProvider.dart';
import 'DetailPage.dart';

class ImageSelectionPage extends StatefulWidget {
  final String category;

  const ImageSelectionPage({required this.category, Key? key})
      : super(key: key);

  @override
  _ImageSelectionPageState createState() => _ImageSelectionPageState();
}

class _ImageSelectionPageState extends State<ImageSelectionPage> {
  late List<Map<String, String>> _data;

  @override
  void initState() {
    super.initState();
    _loadDataByCategory(); // Memuat data berdasarkan kategori
  }

  void _loadDataByCategory() {
    switch (widget.category) {
      case 'Ekspresi':
        _data = CatDataProvider.getCatData();
        break;
      case 'Do':
        _data = DoProvider.getDoData();
        break;
      case 'Dont':
        _data = DontProvider.getDontData();
        break;
      case 'Makanan':
        _data = FoodProvider.getFoodData();
        break;
      case 'Minuman':
        _data = WaterProvider.getWaterData();
        break;
      default:
        _data = [];
    }
    setState(() {}); // Update UI after data is loaded
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
          ? Center(
              child: Text(
                'Tidak ada data untuk kategori ini.',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: _data.length,
              itemBuilder: (context, index) {
                final item = _data[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          image: item['image']!,
                          name: item['name']!,
                          description: item['description']!,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              item['image']!,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item['name']!,
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
              },
            ),
    );
  }
}
