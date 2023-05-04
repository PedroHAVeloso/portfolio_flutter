import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:website/constants/app_colors.dart';

class HomePageEndDrawerWidget extends StatelessWidget {
  const HomePageEndDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextButton(
            onPressed: null,
            child: Text(
              "Sobre mim",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.normal,
                color: AppColors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const TextButton(
            onPressed: null,
            child: Text(
              "Conhecimentos",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.normal,
                color: AppColors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          TextButton.icon(
            onPressed: null,
            icon: SvgPicture.asset(
              "assets/icons/github.svg",
              height: 45.0,
            ),
            label: const Text(
              "GitHub",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
                color: AppColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
