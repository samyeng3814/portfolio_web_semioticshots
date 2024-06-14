import 'package:flutter/material.dart';
import 'package:semeotic_shots_portfolio/core/parallox/parallox.dart';
import 'package:semeotic_shots_portfolio/core/utils/app_colors.dart';
import 'package:semeotic_shots_portfolio/core/utils/primary_text.dart';
import 'package:semeotic_shots_portfolio/core/utils/responsive.dart';

class MobileResponsiveWidget extends StatefulWidget {
  final List<String> imgList;
  final String title;
  final String content;
  const MobileResponsiveWidget(
      {super.key,
      required this.imgList,
      required this.title,
      required this.content});

  @override
  State<MobileResponsiveWidget> createState() => _MobileResponsiveWidgetState();
}

class _MobileResponsiveWidgetState extends State<MobileResponsiveWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
          child: Column(
            children: [
              PrimaryText(
                text: widget.title,
                size: Responsive.isMobile(context)
                    ? 24
                    : Responsive.isLargeMobile(context)
                        ? 26
                        : 18,
                fontWeight: FontWeight.w600,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 14,
              ),
              PrimaryText(
                text: widget.content,
                size: Responsive.isMobile(context)
                    ? 14
                    : Responsive.isLargeMobile(context)
                        ? 16
                        : 12,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: const WidgetStatePropertyAll(
                    EdgeInsets.symmetric(
                      horizontal: 38,
                      vertical: 14,
                    ),
                  ),
                  shape: WidgetStatePropertyAll(
                    BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  backgroundColor:
                      WidgetStateProperty.all<Color>(AppColors.primaryColor),
                ),
                child: const PrimaryText(
                  text: 'Gallery',
                  size: 12,
                  color: AppColors.appWhiteColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        ParalloxEffect(imgList: widget.imgList)
      ],
    );
  }
}
