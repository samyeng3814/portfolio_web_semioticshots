import 'package:flutter/material.dart';
import 'package:semeotic_shots_portfolio/core/utils/app_colors.dart';
import 'package:semeotic_shots_portfolio/core/utils/primary_text.dart';
import 'package:semeotic_shots_portfolio/core/utils/responsive.dart';

class ContactDetailSection extends StatefulWidget {
  const ContactDetailSection({super.key});

  @override
  State<ContactDetailSection> createState() => _ContactDetailSectionState();
}

class _ContactDetailSectionState extends State<ContactDetailSection> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: Responsive.isMobile(context)
          ? 280
          : Responsive.isTablet(context)
              ? 480
              : 640,
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
              ),
              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(42),
            child: Expanded(
              child: Container(
                width: w * 0.8,
                padding: const EdgeInsets.all(48),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.secondaryColor, width: 1),
                  color: AppColors.appWhiteColor,
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Expanded(
                            child: Image.asset('assets/images/vj_img.png'),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              PrimaryText(
                                text: 'Phone: ',
                                size: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              PrimaryText(
                                text: '8270447605',
                                size: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              PrimaryText(
                                text: 'Email: ',
                                size: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              PrimaryText(
                                text: 'vijaysankar1910@gmail.com',
                                size: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
