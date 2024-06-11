import 'package:flutter/material.dart';
import 'package:semeotic_shots_portfolio/core/utils/app_colors.dart';
import 'package:semeotic_shots_portfolio/core/utils/primary_text.dart';
import 'package:semeotic_shots_portfolio/core/utils/responsive.dart';

class BrandsWorkedSection extends StatefulWidget {
  const BrandsWorkedSection({super.key});

  @override
  State<BrandsWorkedSection> createState() => _BrandsWorkedSectionState();
}

class _BrandsWorkedSectionState extends State<BrandsWorkedSection> {
  List<String> brandsList = [
    'taj_hotels_logo.png',
    'kerala_ayurveda_logo.png',
    'itc_hotel_logo.png',
    'great_trails_logo.png',
    'radisson_blu_logo.png',
  ];

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.08,
        // vertical: Responsive.isMobile(context)
        //     ? 26
        //     : Responsive.isTablet(context)
        //         ? 38
        //         : 56,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: Responsive.isMobile(context)
                  ? 26
                  : Responsive.isTablet(context)
                      ? 38
                      : 28,
            ),
            child: Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: AppColors.secondaryColor,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: w * 0.024,
                  ),
                  child: const PrimaryText(
                    text: 'Brands I worked with',
                    size: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Expanded(
                  child: Divider(
                    color: AppColors.secondaryColor,
                    thickness: 1,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              brandsList.length,
              (index) {
                return SizedBox(
                  width: 160,
                  height: 160,
                  child: Image.asset(
                    'assets/images/${brandsList[index]}',
                    fit: BoxFit.contain,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}


//
// ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: brandsList.length,
//             itemBuilder: (context, index) {
              // return SizedBox(
              //   // width: 180,
              //   child: Image.asset(
              //     'assets/images/${brandsList[index]}',
              //     fit: BoxFit.scaleDown,
              //   ),
//               );
//             },
//           ),