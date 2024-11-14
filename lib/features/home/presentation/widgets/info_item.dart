import 'package:flutter/material.dart';
import 'package:yoga_client/features/details/detail_screen.dart';

import '../../../../common/widgets/custom_button.dart';
import '../../../../config/constants/colors.dart';
import '../../../../config/theme.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Course Name',
          style: cardTitle,
        ),
        SizedBox(height: 12),
        UpperRowItemInfo(),
        SizedBox(height: 10),
        LowerRowItemInfo(),
        SizedBox(height: 10),
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
          color: ColorConst.lightTeal,
          size: 19,
        ),
        SizedBox(width: 4),
        Text('Monday'),
        SizedBox(width: 10),
        Icon(
          Icons.timer_outlined,
          color: ColorConst.lightTeal,
          size: 19,
        ),
        SizedBox(width: 4),
        Text('60'),
        SizedBox(width: 10),
        Icon(
          Icons.access_time,
          color: ColorConst.lightTeal,
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
          color: ColorConst.lightTeal,
          size: 19,
        ),
        SizedBox(width: 4),
        Text('Monday'),
        SizedBox(width: 10),
        Icon(
          Icons.people,
          color: ColorConst.lightTeal,
          size: 19,
        ),
        SizedBox(width: 4),
        Text('60'),
        SizedBox(width: 10),
        Icon(
          Icons.euro_sharp,
          color: ColorConst.lightTeal,
          size: 19,
        ),
        SizedBox(width: 4),
        Text('22:15')
      ],
    );
  }
}
