// ignore_for_file: file_names

class CatDataProvider {
  static List<Map<String, String>> getCatData() {
    return [
      {
        'image': 'assets/images/ekspresi/cat1.jpg',
        'name': 'Oyen 1',
        'kode': 'Marah',
        'description': 'Kucing Galak.',
      },
      {
        'image': 'assets/images/ekspresi/cat2.png',
        'name': 'Oyen 2',
        'kode': 'Chill',
        'description': 'Kucing yang suka tidur di kasur.',
      },
      {
        'image': 'assets/images/ekspresi/cat3.png',
        'name': 'Oyen 3',
        'kode': 'Capek',
        'description': 'Kucing capek melihat majikan.',
      },
      // Tambahkan data lainnya sesuai kebutuhan
    ];
  }
}

class DoDontProvider {
  static List<Map<String, String>> getDoDontData() {
    return [
      {
        'image': 'assets/images/doDont/do1.png',
        'name': 'Do',
        'kode': 'Do',
        'category': 'Do & Dont',
        'description': 'Mengelus Kucing.',
      },
      {
        'image': 'assets/images/doDont/do2.png',
        'name': 'Do',
        'kode': 'Do',
        'category': 'Do & Dont',
        'description': 'Memberi Makan Kucing.',
      },
      {
        'image': 'assets/images/doDont/dont1.png',
        'name': 'Dont',
        'kode': 'Dont',
        'category': 'Do & Dont',
        'description': 'Jangan kekerasan kepada kucing.',
      },
      {
        'image': 'assets/images/doDont/dont2.png',
        'name': 'Dont',
        'kode': 'Dont',
        'category': 'Do & Dont',
        'description': 'Jangan teriak atau bersuara keras ke kucing.',
      },
      // Tambahkan data lainnya sesuai kebutuhan
    ];
  }
}

class FnBProvider {
  static List<Map<String, String>> getFnBData() {
    return [
      {
        'image': 'assets/images/fnb/food1.png',
        'name': 'Cat food',
        'kode': 'Makanan & Minuman',
        'category': 'Makanan & Minuman',
        'description': 'Makanan khusus yang diproduksi untuk kucing baik itu kering (Dry food) ataupun basah (Wet food). Sebaiknya disimpan dalam keadaan tertutup.',
      },
      {
        'image': 'assets/images/fnb/food2.png',
        'name': 'Daging segar',
        'kode': 'Makanan & Minuman',
        'category': 'Makanan & Minuman',
        'description': 'Daging segar memiliki protein yang baik dan memberikan terapi rahang dan membersihkan gigi untuk kucing. Daging yang cocok untuk kucing adalah daging ikan ataupun ayam, bisa diberikan yang mentah ataupun yang sudah dimasak sedikit.',
      },
      {
        'image': 'assets/images/fnb/food3.png',
        'name': 'Air Minum',
        'kode': 'Makanan & Minuman',
        'category': 'Makanan & Minuman',
        'description': 'Air merupakan satu-satunya minuman yang cocok untuk kucing karena air yang steril cocok untuk pencernaan kucing. Susu merupakan produk yang tidak cocok untuk kucing karena dapat menyebabkan sakit perut untuk kucing.',
      },
      // Tambahkan data lainnya sesuai kebutuhan
    ];
  }
}
