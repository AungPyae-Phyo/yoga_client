import 'package:flutter/material.dart';
import 'package:yoga_client/config/theme.dart';

// Enum to represent difficulty levels
enum DifficultyLevel {
  beginner,
  intermediate,
  advanced,
}

class DifficulityLevel extends StatelessWidget {
  final DifficultyLevel level;

  const DifficulityLevel({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    String label;
    switch (level) {
      case DifficultyLevel.beginner:
        label = 'Beginner';
        break;
      case DifficultyLevel.intermediate:
        label = 'Intermediate';
        break;
      case DifficultyLevel.advanced:
        label = 'Advanced';
        break;
    }
    return Card(
      elevation: 1,
      child: Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            '# ' + label,
            style: lable,
          )),
    );
  }
}
