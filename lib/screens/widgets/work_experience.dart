import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/screens/widgets/custom_text.dart';
import 'package:flutter_task/utils/constants/colors.dart';
import 'package:flutter_task/utils/constants/images.dart';
import 'package:flutter_task/utils/constants/spacer.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderColor),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  SvgPicture.asset(AppImages.experience),
                  widthSpace(10),
                  customText(
                      text: "Work Experience",
                      color: AppColors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)
                ],
              ),
            ),
            const Divider(
              color: AppColors.borderColor,
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.primary.withOpacity(.2)),
                          child: Center(
                            child: customText(
                                text: "S",
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        widthSpace(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText(
                                text: "CEO/Founder",
                                color: AppColors.primary,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            customText(
                                text: "Samdom Fashion House",
                                color: AppColors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                            customText(
                                text: "June 2018 - Present",
                                color: AppColors.textGrey,
                                fontSize: 11,
                                fontWeight: FontWeight.bold)
                          ],
                        )
                      ],
                    ),
                    heightSpace(10),
                    Row(
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.primary.withOpacity(.2)),
                          child: Center(
                            child: customText(
                                text: "M",
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        widthSpace(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText(
                                text: "Tailoring Apprentice",
                                color: AppColors.primary,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            customText(
                                text: "Maydan Tailoring House",
                                color: AppColors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                            customText(
                                text: "June 2011 - May 2018",
                                color: AppColors.textGrey,
                                fontSize: 11,
                                fontWeight: FontWeight.bold)
                          ],
                        )
                      ],
                    )
                  ],
                )),
          ],
        ));
  }
}
