import 'package:flutter/material.dart';
import 'package:semeotic_shots_portfolio/core/utils/primary_text.dart';
import 'package:semeotic_shots_portfolio/core/utils/responsive.dart';

class WelcomeSection extends StatefulWidget {
  const WelcomeSection({super.key});

  @override
  State<WelcomeSection> createState() => _WelcomeSectionState();
}

class _WelcomeSectionState extends State<WelcomeSection> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.08,
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
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
