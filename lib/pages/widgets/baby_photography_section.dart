import 'package:flutter/material.dart';
import 'package:semeotic_shots_portfolio/core/utils/app_colors.dart';
import 'package:semeotic_shots_portfolio/core/utils/primary_text.dart';
import 'package:semeotic_shots_portfolio/core/utils/responsive.dart';
import 'package:semeotic_shots_portfolio/core/widget/mobile_responsive_widget.dart';

class BabyPhotographySection extends StatefulWidget {
  const BabyPhotographySection({super.key});

  @override
  State<BabyPhotographySection> createState() => _BabyPhotographySectionState();
}

class _BabyPhotographySectionState extends State<BabyPhotographySection> {
  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    List<String> babiesImages = [
      'baby_img_1.png',
      'baby_img_2.png',
      'baby_img_3.png',
    ];

    return w < 720
        ? MobileResponsiveWidget(
            imgList: babiesImages,
            title: "Baby Photography",
            content:
                'We’ll explore the art and techniques behind capturing the beauty of your little one.')
        : SizedBox(
            height: Responsive.isExtraLargeScreen(context)
                ? 640
                : Responsive.isDesktop(context)
                    ? 520
                    : w <= 960 && w >= 720
                        ? 360
                        : Responsive.isTablet(context)
                            ? 480
                            : 280,
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: w >= 960 ? 58 : 26,
                          ),
                          if (w >= 960)
                            const Row(
                              children: [
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Divider(
                                    color: AppColors.secondaryColor,
                                    thickness: 1,
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Responsive.isMobile(context)
                              ? 24
                              : Responsive.isTablet(context)
                                  ? 34
                                  : 48,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PrimaryText(
                              text: "Baby Photography",
                              size: Responsive.isExtraLargeScreen(context)
                                  ? 36
                                  : Responsive.isDesktop(context)
                                      ? 28
                                      : w <= 960 && w >= 720
                                          ? 22
                                          : Responsive.isTablet(context)
                                              ? 26
                                              : 16,
                              fontWeight: FontWeight.w500,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: w <= 960 ? 16 : 26,
                            ),
                            PrimaryText(
                              text:
                                  'We’ll explore the art and techniques behind capturing the beauty of your little one.',
                              size: Responsive.isExtraLargeScreen(context)
                                  ? 24
                                  : Responsive.isDesktop(context)
                                      ? 18
                                      : w <= 960 && w >= 720
                                          ? 14
                                          : Responsive.isTablet(context)
                                              ? 16
                                              : 12,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(
                              height: w <= 960 ? 26 : 32,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                padding: WidgetStatePropertyAll(
                                  EdgeInsets.symmetric(
                                    horizontal: Responsive.isMobile(context)
                                        ? 32
                                        : w <= 960 && w >= 720
                                            ? 48
                                            : Responsive.isTablet(context)
                                                ? 62
                                                : 78,
                                    vertical: Responsive.isMobile(context)
                                        ? 10
                                        : w <= 960 && w >= 720
                                            ? 12
                                            : Responsive.isTablet(context)
                                                ? 14
                                                : 20,
                                  ),
                                ),
                                shape: WidgetStatePropertyAll(
                                  BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                backgroundColor: WidgetStateProperty.all<Color>(
                                    AppColors.primaryColor),
                              ),
                              child: PrimaryText(
                                text: 'Gallery',
                                size: Responsive.isExtraLargeScreen(context)
                                    ? 20
                                    : Responsive.isDesktop(context)
                                        ? 18
                                        : w <= 960 && w >= 720
                                            ? 14
                                            : Responsive.isTablet(context)
                                                ? 14
                                                : 12,
                                color: AppColors.appWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: w >= 960 ? 58 : 26,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: w >= 960
                                ? Column(
                                    children: [
                                      SizedBox(
                                        height: w >= 960 ? 58 : 26,
                                      ),
                                      const Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Divider(
                                              color: AppColors.secondaryColor,
                                              thickness: 1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : const SizedBox(),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(42).copyWith(left: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Flexible(
                              child: Image.asset(
                                'assets/images/baby_img_1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Flexible(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      'assets/images/baby_img_2.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  Expanded(
                                    child: Image.asset(
                                      'assets/images/baby_img_3.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
