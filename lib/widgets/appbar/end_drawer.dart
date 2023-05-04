import 'package:flutter/material.dart';
import 'package:website/constants/app_colors.dart';
import 'package:website/widgets/buttons/black_text.dart';
import 'package:website/widgets/buttons/github.dart';

class EndDrawerWidget extends StatelessWidget {
  const EndDrawerWidget({super.key, required this.boldButton});
  final int? boldButton;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonBlackTextWidget(
            text: 'Sobre mim',
            routeName: null,
            bold: boldButton == 1 ? true : false,
          ),
          const SizedBox(
            height: 30.0,
          ),
          ButtonBlackTextWidget(
            text: 'Conhecimentos',
            routeName: '/knowledge',
            bold: boldButton == 2 ? true : false,
          ),
          const SizedBox(
            height: 30.0,
          ),
          const ButtonGitHubWidget(),
        ],
      ),
    );
  }
}
