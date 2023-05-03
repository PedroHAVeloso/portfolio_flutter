import 'package:flutter/material.dart';
import 'package:website/constants/app_settings.dart';
import 'package:website/pages/home/home_page.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppSettings.fontFamily,
      ),
      routes: {
        '/home': (context) => const HomePage(),
      },
      initialRoute: '/home',
    );
  }
}
