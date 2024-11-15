import 'package:flutter/material.dart';
import 'package:yoga_client/features/home/presentation/widgets/info_item.dart';

import '../../common/level/difficulity.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Details'),
      ),
      body: const Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Course Name'),
            SizedBox(height: 10),
            UpperRowItemInfo(),
            SizedBox(
              height: 10,
            ),
            LowerRowItemInfo(),
            SizedBox(height: 10),
            Text('No Description.'),
            DifficulityLevel(
              level: DifficultyLevel.beginner,
            ),
            SizedBox(height: 10),
            Text(
                'This course is desinged for level Beginners and the target audince is Adults.'),
            SizedBox(height: 10),
            Card(
              elevation: 1,
              //  color: const Color.fromARGB(255, 226, 236, 238),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                    'Get a full refund if you cancel at least 24 hours before the class starts. Enjoy peace of mind with our flexible cacellation policy.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
