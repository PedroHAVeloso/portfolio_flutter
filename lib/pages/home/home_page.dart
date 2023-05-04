import 'package:flutter/material.dart';
import 'package:website/constants/app_colors.dart';
import 'package:website/pages/home/widgets/appbar.dart';
import 'package:website/pages/home/widgets/body.dart';
import 'package:website/pages/home/widgets/bottom_appbar.dart';
import 'package:website/pages/home/widgets/end_drawer.dart';

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
      appBar: HomePageAppBarWidget(
        screenSize: screenSize,
        scaffoldKey: scaffoldKey,
      ),
      body: HomePageBodyWidget(
        screenSize: screenSize,
      ),
      endDrawer: const HomePageEndDrawerWidget(),
      bottomNavigationBar: HomePageBottomAppBarWidget(
        screenSize: screenSize,
      ),
    );
  }
}
