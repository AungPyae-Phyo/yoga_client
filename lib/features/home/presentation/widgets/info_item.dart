import 'package:flutter/material.dart';
import 'package:yoga_client/features/course_detail/detail_screen.dart';

import '../../../../common/widgets/custom_button.dart';
import '../../../../config/constants/colors.dart';
import '../../../../config/constants/text_styles.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Course Name',
          style: TextStyles.cardTitle,
        ),
        const SizedBox(height: 12),
        const UpperRowItemInfo(),
        const SizedBox(height: 10),
        LowerRowItemInfo(),
        const SizedBox(height: 10),
        CustomButton(
            buttonName: 'View',
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailScreen())))
      ],
    );
  }
}

class UpperRowItemInfo extends StatelessWidget {
  const UpperRowItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.calendar_month,
          color: ColorConst.darkAccent,
          size: 19,
        ),
        SizedBox(width: 4),
        Text('Monday'),
        SizedBox(width: 10),
        Icon(
          Icons.timer_outlined,
          color: ColorConst.darkAccent,
          size: 19,
        ),
        SizedBox(width: 4),
        Text('60'),
        SizedBox(width: 10),
        Icon(
          Icons.access_time,
          color: ColorConst.darkAccent,
          size: 19,
        ),
        SizedBox(width: 4),
        Text('22:15')
      ],
    );
  }
}

class LowerRowItemInfo extends StatelessWidget {
  const LowerRowItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.gps_fixed_outlined,
          color: ColorConst.darkAccent,
          size: 19,
        ),
        SizedBox(width: 4),
        Text('Monday'),
        SizedBox(width: 10),
        Icon(
          Icons.people,
          color: ColorConst.darkAccent,
          size: 19,
        ),
        SizedBox(width: 4),
        Text('60'),
        SizedBox(width: 10),
        Icon(
          Icons.euro_sharp,
          color: ColorConst.darkAccent,
          size: 19,
        ),
        SizedBox(width: 4),
        Text('22:15')
      ],
    );
  }
}
