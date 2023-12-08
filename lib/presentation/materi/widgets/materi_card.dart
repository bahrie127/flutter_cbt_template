import 'package:flutter/material.dart';
import 'package:flutter_cbt/core/extensions/build_context_ext.dart';

import '../../../core/constants/colors.dart';
import '../models/materi_model.dart';
import '../pages/materi_detail_page.dart';

class MateriCard extends StatelessWidget {
  final MateriModel data;
  const MateriCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
          MateriDetailPage(data: data),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.14),
              blurRadius: 17,
              offset: const Offset(0, 8),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Flexible(
                  child: Text(
                    data.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                  child: Image.asset(
                    data.image,
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data.timeAgo,
                  style: const TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 12,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Text(
              data.description,
              style: const TextStyle(
                fontSize: 14,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
