import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/custom_scaffold.dart';
import '../models/materi_model.dart';
import '../widgets/materi_card.dart';

class MateriPage extends StatefulWidget {
  final bool showBackButton;
  const MateriPage({super.key, this.showBackButton = true});

  @override
  State<MateriPage> createState() => _MateriPageState();
}

class _MateriPageState extends State<MateriPage> {
  final List<MateriModel> datas = [
    MateriModel(
      image: Assets.images.materi1.path,
      name: 'Lorem ipsum dolor sit amet, consect.',
      dateTime: DateTime.now().subtract(const Duration(hours: 17)),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam accumsan sem ut ligu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam accumsan sem ut ligu.',
    ),
    MateriModel(
      image: Assets.images.materi2.path,
      name: 'Lorem ipsum dolor sit amet, coadipisc',
      dateTime: DateTime.now().subtract(const Duration(days: 1)),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam accumsan sem ut ligu.',
    ),
    MateriModel(
      image: Assets.images.materi1.path,
      name: 'Lorem ipsum dolor sit amet, consect.',
      dateTime: DateTime.now().subtract(const Duration(days: 2)),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam accumsan sem ut ligu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam accumsan sem ut ligu.',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showBackButton: widget.showBackButton,
      appBarTitle: const Text('Materi TPA'),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 24.0),
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: datas.length,
            separatorBuilder: (context, index) => const SizedBox(height: 16.0),
            itemBuilder: (context, index) => MateriCard(
              data: datas[index],
            ),
          ),
        ],
      ),
    );
  }
}
