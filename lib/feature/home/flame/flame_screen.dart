import 'package:flutter/material.dart';

import '../../../constants/assets.dart';
import '../../../constants/colors.dart';
import 'widgets/bonfire.dart';
import 'widgets/bonfire_body.dart';

class FlameScreen extends StatelessWidget {
  const FlameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            child: SizedBox(
              width: size.width,
              height: size.height * 0.67,
              child: Image.asset(
                AppAssets.background,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                gradient: AppColors.flameBgGradient,
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
          ),
        ],
      ),
    );
  }
}
