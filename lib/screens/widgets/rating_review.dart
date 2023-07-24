import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/screens/widgets/custom_text.dart';
import 'package:flutter_task/utils/constants/colors.dart';
import 'package:flutter_task/utils/constants/images.dart';
import 'package:flutter_task/utils/constants/spacer.dart';

class RatingReview extends StatelessWidget {
  const RatingReview({super.key});

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppImages.rating),
                      widthSpace(10),
                      customText(
                          text: "Ratings and Reviews (8)",
                          color: AppColors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  customText(
                      text: "See More",
                      color: AppColors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      hasUnderline: true)
                ],
              ),
            ),
            const Divider(
              color: AppColors.borderColor,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AppImages.ratingImage,
                          width: 50,
                          height: 50,
                        ),
                        widthSpace(10),
                        Column(
                          children: [
                            customText(
                                text: "Allen Daniels",
                                color: AppColors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Image.asset(AppImages.smallStar),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Image.asset(AppImages.smallStar),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Image.asset(AppImages.smallStar),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Image.asset(AppImages.smallStar),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Image.asset(AppImages.smallStar),
                                ),
                                widthSpace(2),
                                customText(
                                    text: "5.0",
                                    color: AppColors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: customText(
                          text: "17 Hours Ago",
                          color: AppColors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                heightSpace(10),
                customText(
                    text:
                        "There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. There has been a password update on your account. Kindly reach out to us immediately if this isn’t your doing. ",
                    color: AppColors.textGrey,
                    fontSize: 11),
                heightSpace(10),
                const Divider(
                  color: AppColors.dividerColor,
                ),
                heightSpace(10),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.primary)),
                  child: Center(
                      child: customText(
                          text: "Write a Review",
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                )
              ]),
            ),
          ],
        ));
  }
}
