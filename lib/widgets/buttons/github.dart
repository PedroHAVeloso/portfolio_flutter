import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/constants/app_colors.dart';

class ButtonGitHubWidget extends StatelessWidget {
  const ButtonGitHubWidget({super.key});
  static final githubUrl = Uri.parse('https://github.com/PedroHAVeloso/');

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => launchUrl(
        githubUrl,
      ),
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
    );
  }
}
