
import 'package:flutter/material.dart';

import '../../../core/components/custom_scaffold.dart';

class TipsAndTricksPage extends StatelessWidget {
  const TipsAndTricksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: const Text('Tips dan Trik'),
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        children: const [
          Text(
            'Bacalah instruksi dengan cermat sebelum memulai. Pastikan Anda memahami apa yang diharapkan dalam tes ini, termasuk aturan waktu dan cara menjawab soal-soal.\n\nSaat membaca soal, pastikan Anda memahami inti pertanyaan. Baca soal beberapa kali jika diperlukan untuk memastikan pemahaman Anda.\n\nTes potensi akademik sering memiliki waktu terbatas, jadi penting untuk mengatur waktu dengan baik. Tentukan berapa waktu yang akan Anda alokasikan untuk setiap pertanyaan atau bagian.\n\nIdentifikasi kata kunci dalam soal yang memberikan petunjuk tentang apa yang diperlukan. Misalnya, jika ada pertanyaan "definisikan," Anda harus memberikan definisi. Jika ada pertanyaan "bandingkan," Anda harus membandingkan.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
