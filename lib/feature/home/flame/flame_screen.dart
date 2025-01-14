import 'package:flutter/material.dart';

import '../../../constants/assets.dart';
import '../../../constants/colors.dart';
import 'widgets/bonfire.dart';
import 'widgets/bonfire_body.dart';

class FlameScreen extends StatelessWidget {
  const FlameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 0.67,
            child: Image.asset(
              AppAssets.background,
              fit: BoxFit.cover,
            ),
          ),
          FractionallySizedBox(
            widthFactor: 1,
            heightFactor: 0.5,
            child: Positioned(
              top: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: AppColors.flameBgGradient,
                ),
              ),
            ),
          ),
          const SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Bonfire(),
                ),
                BonfireBody(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
