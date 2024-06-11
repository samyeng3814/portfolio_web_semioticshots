import 'package:flutter/material.dart';
import 'package:semeotic_shots_portfolio/core/utils/app_colors.dart';
import 'package:semeotic_shots_portfolio/home_page/widgets/baby_photography_section.dart';
import 'package:semeotic_shots_portfolio/home_page/widgets/travel_and_journalism_section.dart';
import 'package:semeotic_shots_portfolio/home_page/widgets/hero_section.dart';
import 'package:semeotic_shots_portfolio/home_page/widgets/potrait_couple_photography_section.dart';
import 'package:semeotic_shots_portfolio/home_page/widgets/welcome_section.dart';
import 'package:semeotic_shots_portfolio/home_page/widgets/architectural_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    // var w = MediaQuery.of(context).size.width;
    return const Scaffold(
      backgroundColor: AppColors.appWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroSection(),
              WelcomeSection(),
              ArchitecturalSection(),
              BabyPhotographySection(),
              TravelAndJournalismSection(),
              PotraitAndCouplePhotographySection(),
            ],
          ),
        ),
      ),
    );
  }
}
