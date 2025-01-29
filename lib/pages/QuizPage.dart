import 'dart:math';
import 'package:flutter/material.dart';
import '../logic/DataProvider.dart';

class QuizPage extends StatefulWidget {
  final String category;

  QuizPage({required this.category});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  late List<Map<String, String>> data;
  late Map<String, String> currentQuestion;
  bool? isAnswerCorrect; // Menyimpan status jawaban (benar/salah)

  @override
  void initState() {
    super.initState();
    _loadData(); // Memuat data berdasarkan kategori
    _generateQuestion(); // Mengacak pertanyaan awal
  }

  void _loadData() {
    switch (widget.category) {
      case 'Ekspresi':
        data = CatDataProvider.getCatData();
        break;
      case 'Do & Dont':
        data = DoDontProvider.getDoDontData();
        break;
      case 'Makanan & Minuman':
        data = FnBProvider.getFnBData();
        break;
      default:
        data = []; // Kosong jika kategori tidak valid
    }
  }

  void _generateQuestion() {
    if (data.isNotEmpty) {
      setState(() {
        currentQuestion = data[Random().nextInt(data.length)];
        isAnswerCorrect = null; // Reset status jawaban
      });
    }
  }

  void _checkAnswer(String selectedAnswer) {
    setState(() {
      isAnswerCorrect = selectedAnswer == currentQuestion['name'];
    });

    // Tunggu sejenak sebelum mengganti pertanyaan
    Future.delayed(Duration(seconds: 1), () {
      if (mounted) {
        _generateQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz: ${widget.category}'),
        backgroundColor: Colors.purple.shade600,
      ),
      body: data.isEmpty
          ? Center(
              child: Text(
                'Tidak ada data untuk kategori ini.',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    color: isAnswerCorrect == true
                        ? Colors.green
                        : isAnswerCorrect == false
                            ? Colors.red
                            : Colors.transparent,
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          currentQuestion['image']!,
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Apakah Ini?',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    spacing: 10,
                    children: data.map((item) {
                      return ElevatedButton(
                        onPressed: () => _checkAnswer(item['name']!),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple.shade400,
                        ),
                        child: Text(item['name']!),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
    );
  }
}
