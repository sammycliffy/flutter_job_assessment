import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/screens/widgets/custom_text.dart';
import 'package:flutter_task/utils/constants/colors.dart';
import 'package:flutter_task/utils/constants/images.dart';
import 'package:flutter_task/utils/constants/spacer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 39,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3), color: AppColors.primary),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(
          AppImages.send,
        ),
        widthSpace(5),
        customText(text: "Send Message", color: AppColors.white, fontSize: 11)
      ]),
    );
  }
}
