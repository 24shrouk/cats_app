import 'package:cats_app/core/constants/app_color.dart';
import 'package:cats_app/core/constants/app_icons.dart';
import 'package:cats_app/core/constants/app_images.dart';
import 'package:cats_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteItemContainer extends StatelessWidget {
  const FavoriteItemContainer({
    super.key,
    required this.name,
    required this.location,
  });
  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 232, 231, 231),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            AppImages.animalImage,
            width: double.infinity,
            height: 130,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: AppStyles.font14SemiBold(context)),
                  Row(
                    spacing: 3,
                    children: [
                      SvgPicture.asset(AppIcons.locationIcon),
                      Text(
                        location,
                        style: AppStyles.font18Regular(
                          context,
                        ).copyWith(color: AppColors.grey464Color, fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsetsDirectional.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColors.green8F9Color,
                ),
                child: SvgPicture.asset(AppIcons.favoriteIcon),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
