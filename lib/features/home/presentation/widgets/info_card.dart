import 'package:flutter/material.dart';
import 'package:yoga_client/features/home/presentation/widgets/info_item.dart';



class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 1,
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InfoItem()
            ),);
  }
}
