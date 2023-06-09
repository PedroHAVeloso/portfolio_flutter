import 'package:flutter/material.dart';
import 'package:website/constants/app_colors.dart';
import 'package:website/widgets/appbar/appbar.dart';
import 'package:website/pages/home/widgets/body.dart';
import 'package:website/pages/home/widgets/bottom_appbar.dart';
import 'package:website/widgets/appbar/end_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: AppColors.white,
      appBar: AppBarWidget(
        screenSize: screenSize,
        scaffoldKey: scaffoldKey,
        boldButton: 1,
      ),
      // body: HomePageBodyWidget(
      //   screenSize: screenSize,
      // ),
      endDrawer: const EndDrawerWidget(
        boldButton: null,
      ),
      bottomNavigationBar: HomePageBottomAppBarWidget(
        screenSize: screenSize,
      ),
    );
  }
}
