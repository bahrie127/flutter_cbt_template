
import 'package:flutter/material.dart';
import 'package:flutter_cbt/core/components/buttons.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';

class RegisterSuccessDialog extends StatelessWidget {
  const RegisterSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          Assets.images.imgSuccess.image(height: 70.0),
          const SizedBox(height: 14.0),
          const Text(
            'Sign up successful!',
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      content: const Text(
        'Your account has been created. Please wait a moment, we are preparing for you...',
      ),
      actions: [
        Button.filled(
          onPressed: () {},
          label: 'Redirecting...',
          icon: const SizedBox(
            height: 20.0,
            width: 20.0,
            child: CircularProgressIndicator(
              color: AppColors.white,
              strokeWidth: 1.0,
            ),
          ),
        ),
      ],
    );
  }
}
