import 'package:flutter/material.dart';
import 'package:semeotic_shots_portfolio/core/utils/app_colors.dart';
import 'package:semeotic_shots_portfolio/core/utils/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Responsive.isMobile(context)
                      ? h * 0.45
                      : Responsive.isTablet(context)
                          ? h * 0.68
                          : h * 0.8,
                  width: w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/hero_img.png'),
                    ),
                  ),
                ),
                Container(
                  height: Responsive.isMobile(context)
                      ? h * 0.45
                      : Responsive.isTablet(context)
                          ? h * 0.68
                          : h * 0.8,
                  width: w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.secondaryColor.withOpacity(0.5),
                        AppColors.appWhiteColor.withOpacity(0.5)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
