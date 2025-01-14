import 'package:flutter/material.dart';

import '../../../../common/styles/text_styles.dart';
import '../../../../constants/assets.dart';
import '../../../../constants/colors.dart';

class ProfileAvatar extends StatelessWidget {
  final String? image;
  final Object tag;
  final String? text;
  final double? fontSize;
  final Color backGroundColor;
  final double radius;

  const ProfileAvatar({
    super.key,
    this.image,
    this.backGroundColor = AppColors.secondaryCardColor,
    this.radius = 30.0,
    this.fontSize,
    this.text,
    this.tag = "null",
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
                  left: radius * 30 / 29, right: 8.0, top: 2, bottom: 2),
              child: Text(
                text ?? "Angelina, 28",
                style: TextStyles.nameTag.copyWith(fontSize: fontSize),
              )),
        ),
        Hero(
          tag: tag,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: backGroundColor, width: 4.0),
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
        ),
      ],
    );
  }
}
