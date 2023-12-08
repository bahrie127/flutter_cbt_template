import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/custom_scaffold.dart';
import '../models/quiz_model.dart';
import '../widgets/quiz_card.dart';

class QuizListPage extends StatelessWidget {
  const QuizListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<QuizModel> datas = [
      QuizModel(
        image: Assets.images.quizCategory.path,
        name: 'Tes Angka',
        type: 'Multiple Choice',
        description:
            'Tes angka adalah suatu jenis tes psikometri yang dirancang untuk mengukur kemampuan individu dalam memahami, menganalisis, dan menyelesaikan masalah yang melibatkan angka dan matematika.',
        duration: 30,
      ),
      QuizModel(
        image: Assets.images.quizCategory.path,
        name: 'Tes Logika',
        type: 'Multiple Choice',
        description:
            'Tes logika adalah metode evaluasi yang digunakan untuk mengukur kemampuan seseorang dalam berpikir secara logis, analitis, dan rasional',
        duration: 30,
      ),
      QuizModel(
        image: Assets.images.quizCategory.path,
        name: 'Tes Verbal',
        type: 'Multiple Choice',
        description:
            'Tes verbal adalah suatu metode evaluasi yang digunakan untuk mengukur kemampuan seseorang dalam menggunakan dan memahami bahasa lisan atau tertulis.',
        duration: 30,
      ),
    ];

    return CustomScaffold(
      appBarTitle: const Text('Quiz'),
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Kategori TPA',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(AssetImage(Assets.icons.sort.path)),
              ),
            ],
          ),
          const SizedBox(height: 30.0),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: datas.length,
            separatorBuilder: (context, index) => const SizedBox(height: 18.0),
            itemBuilder: (context, index) => QuizCard(
              data: datas[index],
            ),
          ),
        ],
      ),
    );
  }
}
