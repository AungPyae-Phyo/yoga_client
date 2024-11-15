import 'package:flutter/material.dart';
import 'package:yoga_client/features/home/presentation/widgets/info_item.dart';

import '../../config/constants/colors.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      // surfaceTintColor: ColorConst.lightAccent,
      child: Padding(padding: EdgeInsets.all(8.0), child: InfoItem()),
    );
  }
}
