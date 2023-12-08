

import 'test_type.dart';

class QuizModel {
  final String image;
  final String name;
  final String type;
  final String description;
  final int duration;

  QuizModel({
    required this.image,
    required this.name,
    required this.type,
    required this.description,
    required this.duration,
  });

  TestType get testType => TestType.fromValue(type);
}
