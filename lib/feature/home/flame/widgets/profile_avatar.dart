import 'package:flutter/material.dart';

import '../../../../common/styles/text_styles.dart';
import '../../../../constants/assets.dart';
import '../../../../constants/colors.dart';

class ProfileAvatar extends StatelessWidget {
  final String? image;
  final double? fontSize;
  final Color backGroundColor;
  final double radius;

  const ProfileAvatar({
    super.key,
    this.image,
    this.backGroundColor = AppColors.secondaryCardColor,
    this.radius = 30.0,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: radius * 4 / 3,
          top: radius / 3,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: backGroundColor,
              ),
              // width: 300,
              padding: EdgeInsets.only(
                  left: radius * 30 / 26, right: 10, top: 4, bottom: 4),
              child: Text(
                "Angelina, 28",
                style: TextStyles.nameTag.copyWith(fontSize: fontSize),
              )),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: backGroundColor, width: 6),
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(360),
            child: CircleAvatar(
              backgroundImage: Image.asset(
                image ?? AppAssets.lady1,
              ).image,
              radius: radius,
            ),
          ),
        ),
      ],
    );
  }
}
