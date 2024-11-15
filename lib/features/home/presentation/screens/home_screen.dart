import 'package:flutter/material.dart';
import '../widgets/info_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yoga App'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.04, vertical: deviceWidth * 0.02),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return  const InfoCard();
          },
        ),
      ),
    );
  }
}


