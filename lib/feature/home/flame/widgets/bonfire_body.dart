import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/styles/text_styles.dart';
import '../../../../constants/colors.dart';
import 'options.dart';
import 'profile_avatar.dart';

class BonfireBody extends StatelessWidget {
  const BonfireBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.black,
            Colors.transparent,
          ],
          stops: [0.8, 1],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 36.0, left: 24.0, right: 24.0, bottom: 12.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 110.0,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  const ProfileAvatar(),
                  Positioned(
                    top: 40.0,
                    left: 75.0,
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width - 80 - 38,
                      child: Text(
                        "What is your favorite time of the day?",
                        maxLines: 2,
                        style: TextStyles.nameTag.copyWith(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '"Mine is definitely the peace in the morning."',
              style: TextStyles.response,
            ),
            const OptionsWidget(
              options: [
                "The peace in the early mornings",
                "The magical golden hours",
                "Wind-down time after dinners",
                "The serenity past midnight",
              ],
              paddingVertical: 12.0,
              optionColor: AppColors.cardColor,
              showBorders: false,
              numbering: ["A", "B", "C", "D"],
            ),
            Row(
              children: [
                Text(
                  "Pick your option.\nSee who has a similar mind.",
                  style: TextStyles.options.copyWith(
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                IconButton.outlined(
                  onPressed: () => {},
                  icon: const Icon(
                    CupertinoIcons.mic_fill,
                    size: 35.0,
                    color: AppColors.primaryColor,
                  ),
                  style: IconButton.styleFrom(
                      side: const BorderSide(
                          width: 2, color: AppColors.primaryColor)),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                IconButton.outlined(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 35.0,
                    color: AppColors.backgroundColor,
                  ),
                  style: IconButton.styleFrom(
                    side: const BorderSide(
                        width: 2, color: AppColors.primaryColor),
                    backgroundColor: AppColors.primaryColor,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
