import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/assets.dart';
import 'chat/chat_screen.dart';
import 'flame/flame_screen.dart';
import 'match/match_screen.dart';
import 'profile/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> screens = const [
    MatchScreen(),
    FlameScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  final Map<String, String> activeIcons = {
    AppAssets.iconChat: AppAssets.iconChatActive,
    AppAssets.iconFire: AppAssets.iconFireActive,
  };

  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) => setState(() => selectedIndex = index),
        items: [
          _buildNavItem(AppAssets.iconCard, 0),
          _buildNavItem(AppAssets.iconFire, 1),
          _buildNavItem(AppAssets.iconChat, 2),
          _buildNavItem(AppAssets.iconPerson, 3),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(String assetPath, int index) {
    final iconToUse =
        selectedIndex == index && activeIcons.containsKey(assetPath)
            ? activeIcons[assetPath]!
            : assetPath;

    return BottomNavigationBarItem(
      icon: SvgPicture.asset(iconToUse, height: 28),
      label: "",
    );
  }
}
