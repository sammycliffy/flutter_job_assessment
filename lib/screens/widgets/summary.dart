import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/screens/widgets/custom_text.dart';
import 'package:flutter_task/utils/constants/colors.dart';
import 'package:flutter_task/utils/constants/images.dart';
import 'package:flutter_task/utils/constants/spacer.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

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
                  SvgPicture.asset(AppImages.summary),
                  widthSpace(10),
                  customText(
                      text: "Summary",
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
              child: customText(
                  text:
                      "There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. ",
                  color: AppColors.textGrey,
                  fontSize: 11),
            ),
          ],
        ));
  }
}
