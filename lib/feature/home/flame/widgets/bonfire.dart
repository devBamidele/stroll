import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/styles/text_styles.dart';
import '../../../../common/utils/widget_functions.dart';
import '../../../../constants/colors.dart';

class Bonfire extends StatelessWidget {
  const Bonfire({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        addHeight(24),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Stroll Bonfire",
              style: TextStyles.header,
            ),
            addWidth(4),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                addHeight(4),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 28,
                  color: AppColors.purpleTextColor,
                ),
              ],
            ),
          ],
        ),
        addHeight(2),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Icon(Icons.timer_outlined, size: 22),
            addWidth(3),
            Text("22hr 00m", style: TextStyles.details),
            addWidth(12),
            const Icon(CupertinoIcons.person, size: 22),
            addWidth(3),
            Text("103", style: TextStyles.details),
            addWidth(28),
          ],
        )
      ],
    );
  }
}
