import 'package:flutter/material.dart';

import '../../config/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String buttonName;
  const CustomButton({
    super.key,
    this.onTap,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          side: const BorderSide(color: ColorConst.lightTeal),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      onPressed: onTap,
      child: Center(
        child: Text(
          buttonName,
          style: const TextStyle(
            fontSize: 16,
            color: ColorConst.lightTeal,
          ),
        ),
      ),
    );
  }
}
