// ignore_for_file: file_names

class CatDataProvider {
  static List<Map<String, String>> getCatData() {
    return [
      {
        'image': 'assets/images/ekspresi/cat1.jpg',
        'name': 'Oyen 1',
        'kode': 'Marah',
        'description': 'Ekspresi pada kucing ini adalah marah. Kucing marah dapat disebabkan oleh berbagai faktor, seperti rasa sakit, stres, ketakutan, dan lain-lain. Kucing marah kadang bisa membuat respon untuk sekitar baik itu fisik seperti cakaran/gigitan ataupun emosional dengan suaranya yang memberikan suara yang besar atau memberikan desis atau yang biasa didengar sebagai "hissh"',
      },
      {
        'image': 'assets/images/ekspresi/cat2.png',
        'name': 'Oyen 2',
        'kode': 'Santai',
        'description': 'Ekspresi pada kucing ini adalah santai/tenang.Kucing juga bisa santai apabila berada dilingkungan yang nyaman bagi mereka. Biasanya mereka suka memperlihatkan bagian perut mereka ketika tidur atau memberikan suara dengkuran.',
      },
      {
        'image': 'assets/images/ekspresi/cat3.jpg',
        'name': 'Oyen 3',
        'kode': 'Capek',
        'description': 'Ekspresi pada kucing ini adalah capek. Sama seperti kita manusia, kucing tentu memiliki rasa capek yang disebabkan dari aktivitas ataupun lingkungan sekitar seperti cuaca. Kucing ketika capek biasanya akan lebih sering menutup matanya dan tidur!',
      },
      // Tambahkan data lainnya sesuai kebutuhan
    ];
  }
}

class PetunjukProvider {
  static List<Map<String, String>> getPetunjukData() {
    return [
      {
        'image': 'assets/images/doDont/do1.png',
        'name': 'Mengelus',
        'kode': 'Do',
        'category': 'Petunjuk',
        'description': 'Mengelus dapat memberikan kenyamanan dan kesehatan mental pada kucing.',
      },
      {
        'image': 'assets/images/doDont/do2.png',
        'name': 'Memberi Makan',
        'kode': 'Do',
        'category': 'Petunjuk',
        'description': 'Memberi makan kucing dapat memberikan kenyamanan dan kesehatan fisik pada kucing.',
      },
      {
        'image': 'assets/images/doDont/dont1.png',
        'name': 'Kekerasan',
        'kode': 'Dont',
        'category': 'Petunjuk',
        'description': 'Jangan kekerasan kepada kucing. Kucing merupakan sesama makhluk hidup yang sama-sama merasakan sakit. Jangan memukul atau menendang kucing ya adik-adik.',
      },
      {
        'image': 'assets/images/doDont/dont2.png',
        'name': 'Teriak',
        'kode': 'Dont',
        'category': 'Petunjuk',
        'description': 'Jangan teriak atau bersuara keras ke kucing. Kucing adalah makhluk hidup yang sensitif terhadap suara, jadi mereka memiliki pendengaran yang berbeda dengan kita manusia. Jangan sembarangan teriak ataupun memberikan suara kencang ke kucing ya adik-adik!',
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
        'kode': 'Cat food',
        'category': 'Makanan & Minuman',
        'description': 'Makanan khusus yang diproduksi untuk kucing baik itu kering (Dry food) ataupun basah (Wet food). Sebaiknya disimpan dalam keadaan tertutup.',
      },
      {
        'image': 'assets/images/fnb/food2.png',
        'name': 'Daging segar',
        'kode': 'Daging segar',
        'category': 'Makanan & Minuman',
        'description': 'Daging segar memiliki protein yang baik dan memberikan terapi rahang dan membersihkan gigi untuk kucing. Daging yang cocok untuk kucing adalah daging ikan ataupun ayam, bisa diberikan yang mentah ataupun yang sudah dimasak sedikit.',
      },
      {
        'image': 'assets/images/fnb/food3.png',
        'name': 'Air Minum',
        'kode': 'Air Minum',
        'category': 'Makanan & Minuman',
        'description': 'Air merupakan satu-satunya minuman yang cocok untuk kucing karena air yang steril cocok untuk pencernaan kucing. Susu merupakan produk yang tidak cocok untuk kucing karena dapat menyebabkan sakit perut untuk kucing.',
      },
      // Tambahkan data lainnya sesuai kebutuhan
    ];
  }
}
