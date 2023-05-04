import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageBottomAppBarWidget extends StatelessWidget {
  const HomePageBottomAppBarWidget({super.key, required this.screenSize});
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0.0,
      height: screenSize.width * 0.2,
      color: Colors.transparent,
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
        ],
      ),
    );
  }
}
