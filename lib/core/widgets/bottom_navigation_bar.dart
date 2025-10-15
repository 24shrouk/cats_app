import 'package:cats_app/core/constants/app_color.dart';
import 'package:cats_app/core/constants/app_icons.dart';
import 'package:cats_app/features/favorite/presentation/screens/pages/favorite_screen.dart';
import 'package:cats_app/features/home/presentation/screens/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    HomeScreen(),
    FavoriteScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.whiteColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: AppColors.primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.homeIcon,
              color: currentIndex == 0
                  ? AppColors.primaryColor
                  : AppColors.greyC8CColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.heartIcon,
              color: currentIndex == 1
                  ? AppColors.primaryColor
                  : AppColors.greyC8CColor,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.messagesIcon,
              color: currentIndex == 2
                  ? AppColors.primaryColor
                  : AppColors.greyC8CColor,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.profileIcon,
              color: currentIndex == 3
                  ? AppColors.primaryColor
                  : AppColors.greyC8CColor,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
