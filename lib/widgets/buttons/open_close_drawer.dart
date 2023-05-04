import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonOpenCloseDrawerWidget extends StatelessWidget {
  const ButtonOpenCloseDrawerWidget({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return IconButton(
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
    );
  }
}
