import 'package:cats_app/core/constants/app_color.dart';
import 'package:cats_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.iconPath,
  });
  final String title;
  final Function() onPressed;
  final String? iconPath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 47.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 3.5,
          shadowColor: AppColors.greyF9FColor,
          backgroundColor: AppColors.primaryColor,
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13.0),
          child: Row(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconPath == null ? SizedBox() : SvgPicture.asset(iconPath!),
              Text(
                title,

                style: AppStyles.font18Meduim(
                  context,
                ).copyWith(color: AppColors.whiteColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
