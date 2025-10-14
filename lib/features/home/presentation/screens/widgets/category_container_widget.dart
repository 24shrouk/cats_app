import 'package:cats_app/core/constants/app_color.dart';
import 'package:cats_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class CategoryContainerWidget extends StatelessWidget {
  const CategoryContainerWidget({
    super.key,
    required this.onTap,
    required this.text,
    required this.isSelected,
  });
  final Function() onTap;
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(2),
        padding: EdgeInsets.symmetric(horizontal: 19, vertical: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isSelected == true
              ? AppColors.primaryColor
              : AppColors.green9F7Color,
        ),
        child: Text(
          text,
          style: AppStyles.font14SemiBold(context).copyWith(
            color: isSelected == true
                ? AppColors.green9F7Color
                : AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
