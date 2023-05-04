import 'package:flutter/material.dart';
import 'package:website/constants/app_colors.dart';

class ButtonBlackTextWidget extends StatelessWidget {
  const ButtonBlackTextWidget(
      {super.key,
      required this.text,
      required this.routeName,
      required this.bold});
  final String text;
  final String? routeName;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (routeName != null) {
          Navigator.of(context).pushNamed(routeName!);
        }
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 22.0,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          color: AppColors.black,
        ),
      ),
    );
  }
}
