import 'package:cats_app/core/constants/app_color.dart';
import 'package:cats_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

class AnimleInfoContainer extends StatelessWidget {
  const AnimleInfoContainer({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
        color: AppColors.green8F9Color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(title, style: AppStyles.font18Meduim(context)),
          Text(
            value,
            style: AppStyles.font16Meduim(
              context,
            ).copyWith(color: AppColors.grey298Color),
          ),
        ],
      ),
    );
  }
}
