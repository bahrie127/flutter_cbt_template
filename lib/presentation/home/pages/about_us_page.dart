
import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/custom_scaffold.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: const Text('About US'),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 30.0),
        children: [
          Assets.images.menu.aboutUs.image(),
          const Text(
            'Code with Bahri didirikan oleh Bahri, seorang individu yang berkomitmen untuk membantu siswa dan profesional dalam mengembangkan keterampilan akademik mereka.\n\nDengan latar belakang pendidikan yang kuat dan pengalaman dalam industri teknologi, Bahri memiliki visi untuk menciptakan alat yang memungkinkan individu untuk mencapai potensi maksimal mereka.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
