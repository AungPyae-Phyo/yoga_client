import 'package:flutter/material.dart';
import 'package:yoga_client/common/widgets/custom_button.dart';
import 'package:yoga_client/config/constants/colors.dart';

import '../../common/level/difficulity.dart';
import '../../config/constants/text_styles.dart';

class ClassInfo extends StatelessWidget {
  const ClassInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {},
      child: Card(
        margin: EdgeInsets.all(8),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.fitness_center,
                    color: ColorConst.lightAccent,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Type: Family Yoga'),
                      Text('Teacher By: BoBo'),
                      DifficulityLevel(level: DifficultyLevel.beginner),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_outline))
                ],
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                CustomButton(buttonName: 'BOOK'),
                Text(
                  'VIEW CLASS',
                  style: TextStyles.label,
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}
