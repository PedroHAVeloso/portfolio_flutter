import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:website/constants/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.white,
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0.0,
              child: SvgPicture.asset(
                "assets/images/splash-center.svg",
                width: screenSize.width * 0.4,
              ),
            ),
            Positioned(
              right: 0.0,
              bottom: 0.0,
              child: SvgPicture.asset(
                "assets/images/splash-right.svg",
                width: screenSize.width * 0.4,
              ),
            ),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              child: SvgPicture.asset(
                "assets/images/splash-left.svg",
                width: screenSize.width * 0.4,
              ),
            ),
            centerItems(screenSize),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: appBar(
                screenSize,
                scaffoldKey,
              ),
            ),
          ],
        ),
      ),
      endDrawer: drawer(),
    );
  }
}

Widget appBar(Size screenSize, GlobalKey<ScaffoldState> scaffoldKey) {
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

Column centerItems(Size screenSize) {
  return Column(
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
  );
}

Drawer drawer() {
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
