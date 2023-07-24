import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/screens/widgets/custom_text.dart';
import 'package:flutter_task/utils/constants/colors.dart';
import 'package:flutter_task/utils/constants/images.dart';
import 'package:flutter_task/utils/constants/spacer.dart';

Widget skillContainer(String skill) => Container(
      margin: const EdgeInsets.all(10),
      width: 120,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: customText(
            text: skill,
            color: AppColors.black,
            fontSize: 11,
            fontWeight: FontWeight.bold),
      ),
    );

class Skills extends StatelessWidget {
  const Skills({super.key});

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
                  SvgPicture.asset(AppImages.skill),
                  widthSpace(10),
                  customText(
                      text: "Skills",
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
                child: Wrap(
                  children: [
                    skillContainer("Fitting"),
                    skillContainer("Sewing"),
                    skillContainer("Measurement Taking"),
                    skillContainer("Amendment")
                  ],
                )),
          ],
        ));
  }
}
