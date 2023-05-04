import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:website/constants/app_colors.dart';

class HomePageAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const HomePageAppBarWidget(
      {super.key, required this.screenSize, required this.scaffoldKey});
  final Size screenSize;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Size get preferredSize => const Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 40.0,
        right: 40.0,
      ),
      height: 100.0,
      child: Row(
        children: [
          const TextButton(
            onPressed: null,
            child: Text(
              "Home",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
          ),
          if (screenSize.width > 730)
            const SizedBox(
              width: 20.0,
            ),
          if (screenSize.width > 730)
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
          if (screenSize.width > 730)
            const SizedBox(
              width: 20.0,
            ),
          if (screenSize.width > 730)
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
          const Spacer(),
          if (screenSize.width > 730)
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
          if (screenSize.width <= 730)
            IconButton(
              onPressed: () {
                if (scaffoldKey.currentState!.isDrawerOpen) {
                  scaffoldKey.currentState!.closeEndDrawer();
                } else {
                  scaffoldKey.currentState!.openEndDrawer();
                }
              },
              icon: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 35.0,
              ),
              iconSize: 35.0,
            ),
        ],
      ),
    );
  }
}
