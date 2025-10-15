import 'package:cats_app/core/constants/app_color.dart';
import 'package:cats_app/core/constants/app_icons.dart';
import 'package:cats_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnimalInfoWidget extends StatelessWidget {
  const AnimalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            spacing: 2,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tom', style: AppStyles.font28Bold(context)),
              Row(
                spacing: 3,
                children: [
                  SvgPicture.asset(AppIcons.locationIcon),
                  Text(
                    '2.7 km away',
                    style: AppStyles.font18Regular(
                      context,
                    ).copyWith(color: AppColors.grey464Color),
                  ),
                ],
              ),
            ],
          ),
          Text(
            '\$95',
            style: AppStyles.font26Bold(
              context,
            ).copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
