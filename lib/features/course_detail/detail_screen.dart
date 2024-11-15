import 'package:flutter/material.dart';
import 'package:yoga_client/features/class_detail/class_info.dart';
import '../../common/level/difficulity.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context);
    final textTheme = currentTheme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Name'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Available Classes',
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              // Padding(
              //   padding: const EdgeInsets.only(left: 5),
              //   child: Text(
              //     'No Description.',
              //     style: textTheme.bodyMedium,
              //   ),
              // ),
              const SizedBox(height: 15),

              // Adding the ListView.builder within the SingleChildScrollView
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5, // Adjust this number as needed
                itemBuilder: (BuildContext context, int index) {
                  return const ClassInfo();
                },
              ),
              const SizedBox(height: 20),

              // Bottom button
              // const CustomFillButton(text: 'Add to Cart'),
            ],
          ),
        ),
      ),
    );
  }
}
