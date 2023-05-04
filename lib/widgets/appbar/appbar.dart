import 'package:flutter/material.dart';
import 'package:website/widgets/buttons/black_text.dart';
import 'package:website/widgets/buttons/github.dart';
import 'package:website/widgets/buttons/open_close_drawer.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget(
      {super.key,
      required this.screenSize,
      required this.scaffoldKey,
      required this.boldButton});
  final Size screenSize;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final int boldButton;

  @override
  get preferredSize => const Size.fromHeight(100.0);

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
          ButtonBlackTextWidget(
            text: 'Home',
            routeName: '/home',
            bold: boldButton == 1 ? true : false,
          ),
          if (screenSize.width > 730)
            const SizedBox(
              width: 20.0,
            ),
          if (screenSize.width > 730)
            ButtonBlackTextWidget(
              text: 'Sobre mim',
              routeName: null,
              bold: boldButton == 2 ? true : false,
            ),
          if (screenSize.width > 730)
            const SizedBox(
              width: 20.0,
            ),
          if (screenSize.width > 730)
            ButtonBlackTextWidget(
              text: 'Conhecimentos',
              routeName: '/knowledge',
              bold: boldButton == 3 ? true : false,
            ),
          const Spacer(),
          if (screenSize.width > 730) const ButtonGitHubWidget(),
          if (screenSize.width <= 730)
            ButtonOpenCloseDrawerWidget(
              scaffoldKey: scaffoldKey,
            ),
        ],
      ),
    );
  }
}
