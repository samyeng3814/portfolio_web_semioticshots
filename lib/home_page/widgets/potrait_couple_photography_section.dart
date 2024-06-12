import 'package:flutter/material.dart';
import 'package:semeotic_shots_portfolio/core/utils/app_colors.dart';
import 'package:semeotic_shots_portfolio/core/utils/primary_text.dart';
import 'package:semeotic_shots_portfolio/core/utils/responsive.dart';

class PotraitAndCouplePhotographySection extends StatefulWidget {
  const PotraitAndCouplePhotographySection({super.key});

  @override
  State<PotraitAndCouplePhotographySection> createState() =>
      _PotraitAndCouplePhotographySectionState();
}

class _PotraitAndCouplePhotographySectionState
    extends State<PotraitAndCouplePhotographySection> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;

    return SizedBox(
      height: Responsive.isExtraLargeScreen(context)
          ? 640
          : Responsive.isDesktop(context)
              ? 520
              : Responsive.isTablet(context)
                  ? 480
                  : 280,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: h * 0.1,
                ),
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
                SizedBox(
                  height: h * 0.06,
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
                        text: "Portrait & couple Photography",
                        size: Responsive.isExtraLargeScreen(context)
                            ? 36
                            : Responsive.isDesktop(context)
                                ? 28
                                : Responsive.isTablet(context)
                                    ? 26
                                    : 16,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      PrimaryText(
                        text:
                            'We’ll explore the art and techniques behind capturing the beauty of your love.',
                        size: Responsive.isExtraLargeScreen(context)
                            ? 24
                            : Responsive.isDesktop(context)
                                ? 18
                                : Responsive.isTablet(context)
                                    ? 16
                                    : 12,
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(
                              horizontal: Responsive.isMobile(context)
                                  ? 48
                                  : Responsive.isTablet(context)
                                      ? 62
                                      : 78,
                              vertical: Responsive.isMobile(context)
                                  ? 10
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
                                  : Responsive.isTablet(context)
                                      ? 14
                                      : 12,
                          color: AppColors.appWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: h * 0.1,
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
                          SizedBox(
                            height: h * 0.06,
                          ),
                        ],
                      ),
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
                          'assets/images/couple_img_1.png',
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
                                'assets/images/couple_img_3.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Expanded(
                              child: Image.asset(
                                'assets/images/couple_img_2.png',
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
