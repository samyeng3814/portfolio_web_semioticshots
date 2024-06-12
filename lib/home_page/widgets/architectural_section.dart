import 'package:flutter/material.dart';
import 'package:semeotic_shots_portfolio/core/utils/app_colors.dart';
import 'package:semeotic_shots_portfolio/core/utils/primary_text.dart';
import 'package:semeotic_shots_portfolio/core/utils/responsive.dart';

class ArchitecturalSection extends StatefulWidget {
  const ArchitecturalSection({super.key});

  @override
  State<ArchitecturalSection> createState() => _ArchitecturalSectionState();
}

class _ArchitecturalSectionState extends State<ArchitecturalSection> {
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
          Flexible(
            flex: 3,
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: AppColors.primaryColor,
                      ),
                    ),
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
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(42).copyWith(right: 0),
                  child: Row(
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.asset(
                                'assets/images/architecture_2.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Expanded(
                              child: Image.asset(
                                'assets/images/architecture_3.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Flexible(
                        child: Image.asset(
                          'assets/images/architecture_1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
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
                      flex: 2,
                      child: Divider(
                        color: AppColors.secondaryColor,
                        thickness: 1,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
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
                        text: "Architectural Photography",
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
                            'We’ll explore the art and techniques behind capturing the beauty of architectural wonders through the lens of a camera.',
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
        ],
      ),
    );
  }
}
