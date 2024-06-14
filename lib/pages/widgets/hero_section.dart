import 'package:flutter/material.dart';
import 'package:semeotic_shots_portfolio/core/utils/app_colors.dart';
import 'package:semeotic_shots_portfolio/core/utils/primary_text.dart';
import 'package:semeotic_shots_portfolio/core/utils/responsive.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          height: Responsive.isMobile(context)
              ? 280
              : w < 960
                  ? 380
                  : Responsive.isTablet(context)
                      ? 480
                      : 640,
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
              ? 280
              : w < 960
                  ? 380
                  : Responsive.isTablet(context)
                      ? 480
                      : 640,
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
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: w * 0.072,
              vertical: Responsive.isMobile(context)
                  ? 10
                  : Responsive.isTablet(context)
                      ? 16
                      : 24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: Responsive.isMobile(context)
                          ? 36
                          : w < 960
                              ? 58
                              : Responsive.isTablet(context)
                                  ? 64
                                  : 96,
                      width: Responsive.isMobile(context)
                          ? 18
                          : w < 960
                              ? 29
                              : Responsive.isTablet(context)
                                  ? 32
                                  : 48,
                      child: Image.asset(
                        'assets/images/semiotic_logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Responsive.isMobile(context) ||
                            Responsive.isLargeMobile(context)
                        ? Container()
                        : Material(
                            elevation: 8,
                            color: AppColors.appGreyColor.withOpacity(0.8),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: w * 0.018,
                                vertical: Responsive.isMobile(context)
                                    ? 6
                                    : Responsive.isTablet(context)
                                        ? 8
                                        : 10,
                              ),
                              width: 452,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const PrimaryText(text: 'Home'),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const PrimaryText(text: 'About Me'),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const PrimaryText(text: 'Portfolio'),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child:
                                        const PrimaryText(text: 'Contact Me'),
                                  ),
                                ],
                              ),
                            ),
                          )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PrimaryText(
                            text: "WHERE PIXELS",
                            size: Responsive.isMobile(context)
                                ? 28
                                : w < 960
                                    ? 48
                                    : Responsive.isTablet(context)
                                        ? 56
                                        : 96,
                            fontWeight: FontWeight.w500,
                          ),
                          PrimaryText(
                            text: "MEET POETRY",
                            fontFamily: 'Cinzel Decorative',
                            size: Responsive.isMobile(context)
                                ? 22
                                : w < 960
                                    ? 38
                                    : Responsive.isTablet(context)
                                        ? 44
                                        : 64,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
                SizedBox(
                  height: Responsive.isMobile(context)
                      ? 36
                      : Responsive.isTablet(context)
                          ? 64
                          : 96,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
