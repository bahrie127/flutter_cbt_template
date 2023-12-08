import 'package:flutter/material.dart';
import 'package:flutter_cbt/core/extensions/build_context_ext.dart';

import '../../../core/components/custom_scaffold.dart';
import '../models/materi_model.dart';

class MateriDetailPage extends StatelessWidget {
  final MateriModel data;
  const MateriDetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitle: const Text('Materi TPA'),
      body: ListView(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(30.0),
            ),
            child: Image.asset(
              data.image,
              width: context.deviceWidth,
              height: 470.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 14.0),
            child: Column(
              children: [
                Text(
                  data.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 14.0),
                Text(
                  data.description,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 100.0),
        ],
      ),
    );
  }
}
