import 'package:flutter/material.dart';
import 'package:website/constants/app_colors.dart';

class HomePageBodyWidget extends StatelessWidget {
  const HomePageBodyWidget({super.key, required this.screenSize});
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Oi, eu sou o Pedro,\n",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: screenSize.width > 780.0
                      ? 60.0
                      : screenSize.width > 580.0
                          ? 50.0
                          : screenSize.width > 480.0
                              ? 40.0
                              : 30.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black),
              children: const [
                TextSpan(
                  text: "desenvolvedor júnior.",
                  style: TextStyle(
                    color: AppColors.darkBlue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 80.0,
            width: 220.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                ),
              ),
              child: const Text(
                "Sobre mim",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  fontSize: 26.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
