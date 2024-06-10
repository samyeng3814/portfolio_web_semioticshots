import 'package:flutter/material.dart';
import 'package:semeotic_shots_portfolio/core/utils/app_colors.dart';
import 'package:semeotic_shots_portfolio/core/utils/primary_text.dart';
import 'package:semeotic_shots_portfolio/core/utils/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: Responsive.isMobile(context)
                        ? 280
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
                                    : Responsive.isTablet(context)
                                        ? 64
                                        : 96,
                                width: Responsive.isMobile(context)
                                    ? 18
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
                                      color: AppColors.appGreyColor
                                          .withOpacity(0.8),
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
                                              child: const PrimaryText(
                                                  text: 'Home'),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: const PrimaryText(
                                                  text: 'About Me'),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: const PrimaryText(
                                                  text: 'Portfolio'),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: const PrimaryText(
                                                  text: 'Contact Me'),
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
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: w * 0.072,
                  vertical: Responsive.isMobile(context)
                      ? 26
                      : Responsive.isTablet(context)
                          ? 38
                          : 56,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryText(
                      text: "Semioticshots",
                      size: Responsive.isMobile(context)
                          ? 28
                          : Responsive.isTablet(context)
                              ? 36
                              : 48,
                      fontWeight: FontWeight.w600,
                    ),
                    PrimaryText(
                      text: 'BY VIJAYKUMAR',
                      fontFamily: 'Cinzel',
                      size: Responsive.isMobile(context)
                          ? 14
                          : Responsive.isTablet(context)
                              ? 18
                              : 22,
                      fontWeight: FontWeight.w400,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    PrimaryText(
                      text:
                          'Welcome to semioticshots by Vijaykumar. I am a professional architectural , event, travel &  portrait photographer. I\'ve honed my craft to evoke emotions and tell stories through my lens. Each click is an opportunity to freeze a fleeting moment, creating timeless memories for you to cherish. Lets collaborate to capture your vision beautifully.',
                      size: Responsive.isMobile(context)
                          ? 14
                          : Responsive.isTablet(context)
                              ? 16
                              : 18,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Responsive.isMobile(context)
                    ? 280
                    : Responsive.isTablet(context)
                        ? 480
                        : 640,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          PrimaryText(
                            text: "Architectural Photography",
                            size: Responsive.isMobile(context)
                                ? 18
                                : Responsive.isTablet(context)
                                    ? 26
                                    : 36,
                            fontWeight: FontWeight.w600,
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          PrimaryText(
                            text:
                                'We\’ll explore the art and techniques behind capturing the beauty of architectural wonders through the lens of a camera.',
                            size: Responsive.isMobile(context)
                                ? 14
                                : Responsive.isTablet(context)
                                    ? 18
                                    : 24,
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  AppColors.primaryColor),
                            ),
                            child: const Text('Click Me'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
