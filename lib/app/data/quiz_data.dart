import 'package:get/get.dart';
import 'dart:math';

class QuizData extends GetxController {
  RxList dataList = [
    {
      "question": "Alat yang digunakan untuk mencukur rambut adalah?",
      "answer": ["Gunting", "Sepatu"],
      "isRight": 0
    },
    {
      "question": "Siapa yang bekerja di rumah sakit?",
      "answer": ["Polisi", "Dokter"],
      "isRight": 1
    },
    {
      "question": "Buah yang berwarna merah adalah?",
      "answer": ["Pisang", "Apel"],
      "isRight": 1
    },
    {
      "question": "Hewan yang bisa terbang adalah?",
      "answer": ["Ikan", "Burung"],
      "isRight": 1
    },
    {
      "question": "Apa warna daun pada umumnya?",
      "answer": ["Hijau", "Merah"],
      "isRight": 0
    },
    {
      "question": "Alat yang digunakan untuk menulis adalah?",
      "answer": ["Pensil", "Sepatu"],
      "isRight": 0
    },
    {
      "question": "Kendaraan yang berjalan di air adalah?",
      "answer": ["Kapal", "Motor"],
      "isRight": 0
    },
    {
      "question": "Bunga yang sering dijadikan hadiah adalah?",
      "answer": ["Kamboja", "Mawar"],
      "isRight": 1
    },
    {
      "question": "Hewan yang suka makan rumput adalah?",
      "answer": ["Kucing", "Sapi"],
      "isRight": 1
    },
    {
      "question": "Buah yang tumbuh di pohon adalah?",
      "answer": ["Semangka", "Mangga"],
      "isRight": 1
    },
    {
      "question": "Benda yang digunakan untuk makan adalah?",
      "answer": ["Sendok", "Sepatu"],
      "isRight": 0
    },
    {
      "question": "Buah yang rasanya asam adalah?",
      "answer": ["Jeruk", "Apel"],
      "isRight": 0
    },
    {
      "question": "Hewan yang memiliki ekor panjang adalah?",
      "answer": ["Kucing", "Ayam"],
      "isRight": 0
    },
    {
      "question": "Bunga yang berwarna putih adalah?",
      "answer": ["Mawar", "Melati"],
      "isRight": 1
    },
    {
      "question": "Kendaraan yang berjalan di udara adalah?",
      "answer": ["Pesawat", "Mobil"],
      "isRight": 0
    },
    {
      "question": "Alat yang digunakan saat hujan adalah?",
      "answer": ["Payung", "Kipas"],
      "isRight": 0
    },
    {
      "question": "Hewan yang suka tinggal di pohon adalah?",
      "answer": ["Monyet", "Kuda"],
      "isRight": 0
    },
    {
      "question": "Buah yang memiliki biji kecil adalah?",
      "answer": ["Anggur", "Pisang"],
      "isRight": 0
    },
    {
      "question": "Benda yang bisa mengapung di air adalah?",
      "answer": ["Kayu", "Batu"],
      "isRight": 0
    },
    {
      "question": "Hewan yang memiliki cakar adalah?",
      "answer": ["Harimau", "Sapi"],
      "isRight": 0
    },
    {
      "question": "Bunga yang tumbuh di air adalah?",
      "answer": ["Teratai", "Mawar"],
      "isRight": 0
    },
    {
      "question": "Kendaraan yang berjalan di rel adalah?",
      "answer": ["Kereta", "Mobil"],
      "isRight": 0
    },
    {
      "question": "Hewan yang hidup di laut adalah?",
      "answer": ["Ikan", "Ayam"],
      "isRight": 0
    },
    {
      "question": "Buah yang sering dibuat jus adalah?",
      "answer": ["Kedondong", "Jeruk"],
      "isRight": 1
    },
    {
      "question": "Bunga yang harum adalah?",
      "answer": ["Melati", "Teratai"],
      "isRight": 0
    },
    {
      "question": "Benda yang ada di ruang tamu adalah?",
      "answer": ["Sapu", "Kursi"],
      "isRight": 1
    },
    {
      "question": "Hewan yang hidup di hutan adalah?",
      "answer": ["Harimau", "Bebek"],
      "isRight": 0
    },
    {
      "question": "Buah yang kulitnya tebal adalah?",
      "answer": ["Jeruk", "Semangka"],
      "isRight": 1
    },
    {
      "question": "Hewan yang bisa melompat adalah?",
      "answer": ["Kelinci", "Ayam"],
      "isRight": 0
    },
    {
      "question": "Benda yang digunakan untuk melihat waktu adalah?",
      "answer": ["Jam", "Payung"],
      "isRight": 0
    },
    {
      "question": "Hewan yang hidup di sawah adalah?",
      "answer": ["Katak", "Kuda"],
      "isRight": 0
    },
    {
      "question": "Buah yang berbentuk bulat adalah?",
      "answer": ["Apel", "Pisang"],
      "isRight": 0
    },
    {
      "question": "Hewan yang bisa berenang adalah?",
      "answer": ["Ikan", "Burung"],
      "isRight": 0
    },
    {
      "question": "Benda yang digunakan untuk membersihkan lantai adalah?",
      "answer": ["Sapu", "Payung"],
      "isRight": 0
    },
    {
      "question": "Buah yang rasanya manis adalah?",
      "answer": ["Mangga", "Lemon"],
      "isRight": 0
    },
  ].obs;

  RxInt score = 0.obs;
  RxMap currentRandom = {}.obs;
  RxString message = ''.obs;

  void updateRandomData() {
    currentRandom.value = dataList[Random().nextInt(dataList.length)];
  }
}
