import 'package:flutter/material.dart';
import 'package:semeotic_shots_portfolio/core/utils/app_colors.dart';
import 'package:semeotic_shots_portfolio/pages/widgets/baby_photography_section.dart';
import 'package:semeotic_shots_portfolio/pages/widgets/brands_worked_section.dart';
import 'package:semeotic_shots_portfolio/pages/widgets/contact_detail_section.dart';
import 'package:semeotic_shots_portfolio/pages/widgets/travel_and_journalism_section.dart';
import 'package:semeotic_shots_portfolio/pages/widgets/hero_section.dart';
import 'package:semeotic_shots_portfolio/pages/widgets/potrait_couple_photography_section.dart';
import 'package:semeotic_shots_portfolio/pages/widgets/welcome_section.dart';
import 'package:semeotic_shots_portfolio/pages/widgets/architectural_section.dart';

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
      backgroundColor: AppColors.appWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeroSection(),
              const WelcomeSection(),
              if (w > 720)
                SizedBox(
                  height: h * 0.07,
                ),
              const ArchitecturalSection(),
              if (w > 720)
                SizedBox(
                  height: h * 0.07,
                ),
              const BabyPhotographySection(),
              if (w > 720)
                SizedBox(
                  height: h * 0.07,
                ),
              const TravelAndJournalismSection(),
              if (w > 720)
                SizedBox(
                  height: h * 0.07,
                ),
              const PotraitAndCouplePhotographySection(),
              if (w > 720)
                SizedBox(
                  height: h * 0.07,
                ),
              const BrandsWorkedSection(),
              if (w > 720)
                SizedBox(
                  height: h * 0.07,
                ),
              const ContactDetailSection(),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
