import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/screens/widgets/custom_button.dart';
import 'package:flutter_task/screens/widgets/custom_text.dart';
import 'package:flutter_task/screens/widgets/job_portfolio.dart';
import 'package:flutter_task/screens/widgets/rating_review.dart';
import 'package:flutter_task/screens/widgets/skills.dart';
import 'package:flutter_task/screens/widgets/summary.dart';
import 'package:flutter_task/screens/widgets/work_experience.dart';
import 'package:flutter_task/utils/constants/colors.dart';
import 'package:flutter_task/utils/constants/images.dart';
import 'package:flutter_task/utils/constants/spacer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: customText(
                text: "View Profile",
                color: AppColors.primary,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SvgPicture.asset(
              AppImages.arrowBack,
              width: 30,
              height: 30,
            ),
          )),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 107,
                  height: 107,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.circleColor),
                  child: Center(child: Image.asset(AppImages.avatar)),
                ),
                Positioned(
                  top: 80,
                  left: 85,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.green,
                    ),
                  ),
                )
              ],
            ),
            heightSpace(10),
            customText(
                text: "Samuel Dominic",
                color: AppColors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            customText(
                text: "Fashion Designer, Male",
                color: AppColors.textGrey,
                fontSize: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset(
                    AppImages.smallStar,
                    width: 12,
                    height: 12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset(
                    AppImages.smallStar,
                    width: 12,
                    height: 12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset(
                    AppImages.smallStar,
                    width: 12,
                    height: 12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset(
                    AppImages.smallStar,
                    width: 12,
                    height: 12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset(
                    AppImages.smallStar,
                    width: 11,
                    height: 11,
                  ),
                ),
                widthSpace(2),
                customText(
                    text: "5.0",
                    color: AppColors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold)
              ],
            ),
            heightSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AppImages.location),
                    widthSpace(5),
                    customText(
                        text: "Lagos, Nigeria",
                        color: AppColors.textGrey,
                        fontSize: 15)
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppImages.telephone),
                    widthSpace(5),
                    customText(
                        text: "+234 813 970 3721",
                        color: AppColors.textGrey,
                        fontSize: 15)
                  ],
                )
              ],
            ),
            heightSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AppImages.email),
                    widthSpace(5),
                    customText(
                        text: "samdee@gmail.com",
                        color: AppColors.textGrey,
                        fontSize: 15)
                  ],
                ),
                Row(
                  children: [
                    customText(
                        text: "Experience",
                        color: AppColors.textGrey,
                        fontSize: 15),
                    widthSpace(5),
                    Container(
                      width: 52,
                      height: 17,
                      decoration: BoxDecoration(
                          color: AppColors.circleColor,
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                        child: customText(
                            text: "Expert",
                            color: AppColors.black,
                            fontSize: 11),
                      ),
                    )
                  ],
                )
              ],
            ),
            heightSpace(10),
            const CustomButton(),
            heightSpace(10),
            const Divider(
              color: AppColors.dividerColor,
            ),
            heightSpace(10),
            Row(
              children: [
                customText(
                    text: "Join Date:",
                    color: AppColors.primary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                widthSpace(5),
                customText(
                    text: "19th August, 2021",
                    color: AppColors.black,
                    fontSize: 15)
              ],
            ),
            heightSpace(5),
            Row(
              children: [
                customText(
                    text: "Completed Jobs:",
                    color: AppColors.primary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                widthSpace(5),
                customText(text: "300", color: AppColors.black, fontSize: 15)
              ],
            ),
            heightSpace(5),
            Row(
              children: [
                customText(
                    text: "Last Seen:",
                    color: AppColors.primary,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                widthSpace(5),
                customText(
                    text: "4 Hours Ago", color: AppColors.black, fontSize: 15)
              ],
            ),
            heightSpace(8),
            const Divider(
              color: AppColors.dividerColor,
            ),
            heightSpace(8),
            const Summary(),
            heightSpace(20),
            const WorkExperience(),
            heightSpace(20),
            const Skills(),
            heightSpace(20),
            const Portfolio(),
            heightSpace(20),
            const RatingReview(),
            heightSpace(30),
          ],
        ),
      )),
    );
  }
}
