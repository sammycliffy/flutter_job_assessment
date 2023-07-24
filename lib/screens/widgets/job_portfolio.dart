import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/screens/widgets/custom_text.dart';
import 'package:flutter_task/utils/constants/colors.dart';
import 'package:flutter_task/utils/constants/images.dart';
import 'package:flutter_task/utils/constants/spacer.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

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
                      text: "Job Portfolio",
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                            width: 93,
                            height: 108,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(AppImages.ankara)))),
                        heightSpace(5),
                        customText(
                            text: "Ankara Gown",
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 11)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            width: 93,
                            height: 108,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(AppImages.suit)))),
                        heightSpace(5),
                        customText(
                            text: "3 -Piece Suit",
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 11)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            width: 93,
                            height: 108,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(AppImages.jumpdress)))),
                        heightSpace(5),
                        customText(
                            text: "Jumpsuit Dress",
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 11)
                      ],
                    )
                  ],
                )),
          ],
        ));
  }
}
