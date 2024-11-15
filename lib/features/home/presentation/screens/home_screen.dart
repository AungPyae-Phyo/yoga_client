import 'package:flutter/material.dart';
import '../../../course_detail/course_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.02),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: 25.5,
            ),
          )
        ],
        title: const Text('Yoga App'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.03, vertical: deviceWidth * 0.02),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return const CourseInfo();
          },
        ),
      ),
    );
  }
}
