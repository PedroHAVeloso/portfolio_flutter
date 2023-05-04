import 'package:flutter/material.dart';
import 'package:website/constants/app_colors.dart';
import 'package:website/widgets/appbar/appbar.dart';
import 'package:website/widgets/appbar/end_drawer.dart';

class KnowledgePage extends StatelessWidget {
  const KnowledgePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.white,
      appBar: AppBarWidget(
        screenSize: screenSize,
        scaffoldKey: scaffoldKey,
        boldButton: 3,
      ),
      endDrawer: const EndDrawerWidget(
        boldButton: 2,
      ),
    );
  }
}
