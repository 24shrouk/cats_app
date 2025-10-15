import 'package:cats_app/core/constants/app_color.dart';
import 'package:cats_app/core/constants/app_icons.dart';
import 'package:cats_app/core/constants/app_images.dart';
import 'package:cats_app/core/constants/app_routes.dart';
import 'package:cats_app/core/constants/app_styles.dart';
import 'package:cats_app/core/widgets/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.dogAndCatImage),
          SizedBox(height: size.height * 0.08),
          Text(
            'Find Your Best\n Companion With Us',
            textAlign: TextAlign.center,
            style: AppStyles.font32Bold(
              context,
            ).copyWith(color: AppColors.black909Color),
          ),
          SizedBox(height: 10),
          Text(
            'Join & discover the best suitable pets as\n per your preferences in your location',
            textAlign: TextAlign.center,
            style: AppStyles.font16Regular(
              context,
            ).copyWith(color: AppColors.greyF9FColor),
          ),
          SizedBox(height: size.height * 0.08),
          CustomElevatedButton(
            iconPath: AppIcons.getStartedIcon,
            title: 'Get started',
            onPressed: () {
              Navigator.pushReplacementNamed(context, AppRoutes.mainScreen);
            },
          ),
        ],
      ),
    );
  }
}
